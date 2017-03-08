module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


freQty : Int -> Int -> Item -> Item
freQty minQty freeQty item =
    if item.qty >= minQty then
        { item | freeQty = freeQty }
    else
        item


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


newCart : List Item
newCart =
    List.map ((freQty 5 1) >> (freQty 10 3)) cart


main : Html.Html msg
main =
    Html.text (toString newCart)
