" Normal mode
let s:N1 = [ '#ffffff' , '#5f00af' , 15 , 30  ]
let s:N2 = [ '#ffffff' , '#875fd7' , 15 , 73  ]
let s:N3 = [ '#ffffff' , '#121212' , 15 , 109 ]

" Insert mode
let s:I1 = [ '#ffffff' , '#005fff' , 15 , 31  ]
let s:I2 = [ '#ffffff' , '#00afff' , 15 , 74  ]
let s:I3 = [ '#ffffff' , '#121212' , 15 , 109 ]

" Visual mode
let s:V1 = [ '#121212' , '#ff5f00' , 15 , 137 ]
let s:V2 = [ '#121212' , '#ffaf00' , 15 , 138 ]
let s:V3 = [ '#ffffff' , '#121212' , 15 , 109 ]

" Replace mode
let s:R1 = [ '#ffffff' , '#ff0000' , 15 , 196 ]
let s:R2 = [ '#ffffff' , '#ff5f5f' , 15 , 203 ]
let s:R3 = [ '#ffffff' , '#121212' , 15 , 109 ]

let g:airline#themes#plasticine#palette = {}
let g:airline#themes#plasticine#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#plasticine#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#plasticine#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#plasticine#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Inactive mode
let s:IN1 = [ '#9e9e9e' , '#626262' , 109 , 241 ]
let s:IN2 = [ '#ffffff' , '#121212' , 15  , 109 ]

let s:IA = [ s:IN1[1] , s:IN2[1] , s:IN1[3] , s:IN2[3] , '' ]
let g:airline#themes#plasticine#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 =  [ '#ffffff' , '#5f00af' , 15 , 55 ]
let s:CP2 =  [ '#ffffff' , '#875fd7' , 15 , 98 ]
let s:CP3 =  [ '#5f00af' , '#ffffff' , 55 , 15 ]

let g:airline#themes#plasticine#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

" Tabline
let g:airline#themes#plasticine#palette.tabline = {
      \ 'airline_tab':     [ '#ffffff' , '#5f00af' ,  15 , 55  , '' ],
      \ 'airline_tabsel':  [ '#ffffff' , '#875fd7' ,  15 , 98  , '' ],
      \ 'airline_tabtype': [ '#ffffff' , '#875fd7' ,  15 , 98  , '' ],
      \ 'airline_tabfill': [ '#ffffff' , '#121212' ,  15 , 109 , '' ],
      \ 'airline_tabmod':  [ '#ffffff' , '#ff5f5f' ,  15 , 33  , '' ]
      \ }

