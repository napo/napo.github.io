# Napo

Sito personale di Maurizio Napolitano, realizzato con Jekyll e pubblicato su `https://napo.github.io`.

Il nome visualizzato è `napo`, con la firma `aka maurizio napolitano`. La homepage è disponibile in italiano (`/`) e inglese (`/en/`); gli articoli restano nella lingua in cui sono stati pubblicati. Il selettore `IT / EN` permette di passare da una versione all'altra.

Le homepage mostrano 15 articoli alla volta; il pulsante di caricamento progressivo e la ricerca nell'intero testo degli articoli usano l'indice generato in `search.json`. I contenuti del sito sono indicati come rilasciati con licenza Creative Commons Attribuzione 4.0 Internazionale (CC BY 4.0).

## Gestire gli articoli

Gli articoli sono i file Markdown dentro `_posts/`. Per rimuoverne uno, elimina il relativo file `.md` da `_posts/` e ricostruisci il sito; per esempio:

```sh
rm _posts/AAAA-MM-GG-titolo-articolo.md
JEKYLL_NO_BUNDLER_REQUIRE=1 jekyll build
```

Sostituisci il nome di esempio con il percorso esatto del file. Non cancellare file da `_site/`: è una cartella generata e viene rigenerata dalla build. Non eliminare le immagini senza verificare che nessun altro articolo le usi. I termini presenti in `categories` o `tags` nel front matter degli articoli alimentano la nuvola di tag e le rispettive pagine indice.

## Anteprima locale

```sh
bundle install
bundle exec jekyll serve
```

## Pubblicazione

Pubblica il progetto su GitHub nel branch `main`, poi seleziona **GitHub Actions** come sorgente in **Settings → Pages**. Il workflow in `.github/workflows/pages.yml` esegue la build e pubblica il sito a ogni push su `main`.

Il repository deve chiamarsi `napo.github.io`. In **Settings → Pages**, seleziona **GitHub Actions** come sorgente. Il workflow pubblica il sito a ogni push su `main`.

## Importazione WordPress

Lo script `scripts/import_wordpress.rb` importa gli articoli pubblicati che contengono immagini nel corpo o un'immagine in evidenza. Accorpa le copie con lo stesso titolo e almeno il 95% di parole in comune, mantiene l'URL canonico e genera pagine di reindirizzamento per gli slug accorpati. Copia nel sito soltanto i file immagine effettivamente usati, senza modificare la cartella sorgente FTP.

```sh
ruby scripts/import_wordpress.rb EXPORT.xml FTP_UPLOADS_DIR .
```

L'esportazione personale di Medium va importata con:

```sh
ruby scripts/import_medium.rb medium-export.zip .
```

Vengono importate tutte le storie pubblicate; le bozze sono escluse. Tutti gli articoli, inclusi quelli provenienti da Medium, compaiono nell'archivio **Articoli**. Le storie con almeno il 95% del testo in comune vengono accorpate; per titoli uguali basta l'80% di somiglianza. Le immagini Medium e il link alla fonte vengono aggiunti all'articolo esistente. Le immagini delle nuove storie Medium vengono salvate localmente.
