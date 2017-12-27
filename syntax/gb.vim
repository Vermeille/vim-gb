if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "gb"

syn keyword gbCall call ret retZ retNZ callZ callNZ retC retNC rst
syn keyword gbJump jr jrZ jrNZ jrC jrNC jp jpZ jpNZ jpC jpNC

syn match gbFun "^-\S\+"
syn match gbAddr "^[^-]\S\+"

syn keyword gbAddr joyp serial_transfer serial_ctrl timer_divider timer_counter
syn keyword gbAddr timer_modulo timer_control io_ports int_flag io_ports lcdc
syn keyword gbAddr lcd_status scroll_y scroll_x y_coord ly_compare dma
syn keyword gbAddr interrupt_master snd_out_term_select win_x_pos win_y_pos
syn keyword gbAddr bg_palette_data obj_palette0_data


hi def link gbAddr Function
hi def link gbFun  Comment
hi def link gbCall Keyword
hi def link gbJump String
