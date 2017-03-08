module Main exposing (..)

import Html
import String


myFunction name =
    if String.length name > 10 then
        String.toUpper name
    else
        name


result =
    myFunction "Alexaner nikolaev" ++ "- name length:" ++ toString (String.length "Alexaner nikolaev")


main =
    Html.text result
