# MyApp

This is a reproduction of the Ecto issue in ExMachina

(1) Set up a new project with an association:

```
mix phx.new my_app --module MyApp
cd my_app/
mix phx.gen.schema Post posts title:string views:integer
mix phx.gen.schema Comment comments content:string post_id:references:posts

... add associations to the new Ecto.Schema...
```

(2) Add ExMachina and test case with preloads

See [the test cases](https://github.com/jeremy-hanna/ecto-warnings/blob/master/test/my_app/post_test.exs)

(3) Run tests and view warnings

```
mix test
```

