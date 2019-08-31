module Main exposing (main)

import Html exposing (a, div, h1, img, nav, text)
import Html.Attributes exposing (class, href, id, src)


main =
    div []
        [ navbar
        , content
        ]


navbar =
    nav []
        [ div [ class "nav-wrapper container" ]
            [ a [ class "brand-logo", href "#" ] [ text "Logo" ]
            ]
        ]


images =
    [ ( "image_small.png", "image.png" )
    , ( "image_sepia_small.png", "image_sepia.png" )
    , ( "image_small.png", "image.png" )
    , ( "image_sepia_small.png", "image_sepia.png" )
    , ( "image_small.png", "image.png" )
    , ( "image_sepia_small.png", "image_sepia.png" )
    ]


content =
    div [ class "container" ]
        [ h1 [ class "header" ] [ text "Sample" ]
        , div [ class "row" ] (List.indexedMap makeModal images)
        ]


makeModal index ( imageSmall, image ) =
    let
        modalId =
            "modal" ++ String.fromInt index
    in
    div [ class "col l2" ]
        [ a [ class "modal-trigger", href ("#" ++ modalId) ]
            [ img [ class "responsive-img", src imageSmall ] [] ]
        , div [ class "modal modal-fixed-footer", id modalId ]
            [ div [ class "modal-content center" ]
                [ img [ class "image-in-modal", src image ] [] ]
            , div [ class "modal-footer" ]
                [ a [ class "modal-close btn-flat", href "#" ]
                    [ text "Close" ]
                ]
            ]
        ]
