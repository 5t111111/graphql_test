# graphql_test

GraphQL 試す用の Rails アプリケーション

## Get started

```
$ bundle install
```

```
$ bin/rails db:migrate
$ bin/rails db:seed
```

```
$ bin/rails s
```

Then visit `http://localhost:3000/graphiql` in your browser.

## Query

(Data seeds are still WIP. See current registered seed => https://github.com/5t111111/graphql_test/blob/master/db/seeds.rb)

Fetch a weapon's `id` and `name` with the name "スプラシューター":

```
{
  weapon(name: "スプラシューター") {
    id
    name
  }
}
```


Fetch all weapons which have "スプラッシュボム" as their sub-weapon:

```graphql
{
  sub_weapon(name: "スプラッシュボム") {
    id
    name
    weapons {
      edges {
        node {
          id
          name
        }
      }
    }
  }
}
```

## Mutation

Creating and updating are not supported yet.
