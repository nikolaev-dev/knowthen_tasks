module Main exposing (..)

import Html
import String


(~=) a b =
    String.left 1 a == String.left 1 b


result =
    "ABC" ~= "A"


main =
    result
        |> toString
        |> Html.text
