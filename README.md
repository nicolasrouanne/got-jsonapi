# GOT JSON:API

An example {JSON:API} for **Game of Thrones** ⚔️ based on _Rails_ and [`fast_jsonapi`](https://github.com/Netflix/fast_jsonapi) by _Netflix_

## Usage

Check out the project and run

```bash
$ rails db:setup # create database and seed it
$ rails server # launch your API
```

Query your api on `localhost:3000`, for instance `http://localhost:3000/houses` ☕️

## Routes & Models

This demo is based on 2 models only:

- Houses (e.g. _House Stark_ 🐺)
- Characters (e.g. _Jon Snow_ ❄️)

There is a 1..n relationship between _House_ and _Characters_.

## Tutorial

This project was made for a **Tech Talk** 🍺 to demonstrate the power of JSON:API. To follow along using a progressive path, use the branches:

1. `1-data-relationships`: API answering basic object w/ attributes & relationships
2. `2-includes`: adds [_Compound documents_](https://jsonapi.org/format/#document-compound-documents) (`included`)
3. `3-paginaton`: adds pagination, `links` and `meta``
4. `4-sparse-fieldsets`: adds [_Sparse Fieldsets_](https://jsonapi.org/format/#fetching-sparse-fieldsets)
