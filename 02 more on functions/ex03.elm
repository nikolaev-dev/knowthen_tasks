module Main exposing (..)

import Html
import String
import List


-- wordCount a =
--     a
--         |> String.words
--         |> List.length


wordCount =
    String.words >> List.length


main =
    "Hello world, la la la!"
        |> wordCount
        |> toString
        |> Html.text
