(() => {
  const search = document.querySelector(".archive-search");
  const list = document.querySelector("[data-post-list]");
  const loadMore = document.querySelector("[data-load-more]");
  const count = document.querySelector("[data-article-count]");
  const status = document.querySelector("#article-search-status");

  if (!search || !list || !loadMore || !count || !status) return;

  const pageSize = 15;
  const total = Number(count.dataset.total);
  let articlesPromise;
  let results = [];
  let displayed = pageSize;

  const normalize = (value) =>
    value.normalize("NFD").replace(/[\u0300-\u036f]/g, "").toLocaleLowerCase();

  const setCount = (number, filtered) => {
    if (!filtered) {
      count.textContent = `${number} ${search.dataset.countAll}`;
      return;
    }
    const wording = number === 1 ? search.dataset.countSingular : search.dataset.countPlural;
    count.textContent = `${number} ${wording}`;
  };

  const articleRow = (article) => {
    const row = document.createElement("li");
    const date = document.createElement("time");
    const link = document.createElement("a");
    date.textContent = article.date;
    link.href = article.url;
    link.textContent = article.title;
    row.append(date, link);
    return row;
  };

  const loadArticles = () => {
    if (!articlesPromise) {
      articlesPromise = fetch(search.dataset.searchIndex)
        .then((response) => {
          if (!response.ok) throw new Error(`Search index request failed: ${response.status}`);
          return response.json();
        })
        .then((data) => {
          if (!Array.isArray(data)) throw new Error("Search index has an invalid format");
          return data;
        })
        .catch((error) => {
          articlesPromise = undefined;
          throw error;
        });
    }
    return articlesPromise;
  };

  const showResults = (articles, append = false) => {
    const start = append ? displayed : 0;
    const end = Math.min(start + pageSize, articles.length);
    if (!append) list.replaceChildren();
    for (let index = start; index < end; index += 1) {
      list.append(articleRow(articles[index]));
    }
    displayed = end;
    list.hidden = articles.length === 0;
    loadMore.hidden = displayed >= articles.length;
    if (articles.length === 0) status.textContent = search.dataset.empty;
  };

  setCount(total, false);
  loadMore.hidden = total <= pageSize;

  loadMore.addEventListener("click", async () => {
    loadMore.disabled = true;
    status.textContent = search.dataset.loading;
    try {
      const allArticles = await loadArticles();
      const query = normalize(search.value.trim());
      results = query
        ? allArticles.filter((article) =>
            normalize(`${article.title} ${article.content}`).includes(query),
          )
        : allArticles;
      showResults(results, true);
      status.textContent = "";
      setCount(results.length, Boolean(query));
    } catch (error) {
      console.error(error);
      status.textContent = search.dataset.loadError;
    } finally {
      loadMore.disabled = false;
    }
  });

  if ("IntersectionObserver" in window) {
    const observer = new IntersectionObserver(
      (entries) => {
        if (entries.some((entry) => entry.isIntersecting) && !loadMore.disabled) {
          loadMore.click();
        }
      },
      { rootMargin: "0px 0px 240px 0px" },
    );
    observer.observe(loadMore);
  }

  let searchTimer;
  search.addEventListener("input", () => {
    window.clearTimeout(searchTimer);
    const query = normalize(search.value.trim());
    if (!query) {
      list.hidden = false;
      list.replaceChildren();
      displayed = 0;
      results = [];
      setCount(total, false);
      loadMore.hidden = total <= pageSize;
      status.textContent = "";
      loadMore.click();
      return;
    }

    status.textContent = search.dataset.loading;
    searchTimer = window.setTimeout(async () => {
      try {
        const allArticles = await loadArticles();
        results = allArticles.filter((article) =>
          normalize(`${article.title} ${article.content}`).includes(query),
        );
        displayed = 0;
        showResults(results);
        setCount(results.length, true);
        if (results.length > 0) status.textContent = "";
      } catch (error) {
        console.error(error);
        status.textContent = search.dataset.loadError;
      }
    }, 180);
  });
})();
