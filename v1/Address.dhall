{-

Where to find some source.

It could be one of the following:
- the Registry itself: if this is specified we refer to the uploaded tarballs
- some local path, for local packages. Note: the path must point to the spago.dhall
- a GitHub/Git repo

-}

let Prelude = ./Prelude.dhall

let Repo = ./Repo.dhall

let Address = 
  < Registry : { name : Text, version : Text }
  | Repo : Repo
  | Local : Prelude.Location.Type 
  >

in Address