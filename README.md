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

(2) Add ExMachina


