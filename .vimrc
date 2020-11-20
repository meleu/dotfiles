" textwidth=70 : setenta caracteres por linha
" background=dark :
"set textwidth=78

set background=dark

" aw : 
" ls=2 : 
set aw ls=2

" exibir régua
set ruler

" quando estiver fazendo uma busca com '/', não precisa ser case-sensitive
set ignorecase

" desabilita o 'ignorecase' caso o padrão que está sendo buscado contiver
" alguma letra maiúscula.
set smartcase

" habilitar syntax highlighting
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" adicionando algumas coisas que encontrei no arch wiki do vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" número de espaços que um tab vale
set tabstop=2

" número de espaços para cado passo do (auto)indent
set shiftwidth=2

" substitui um tab pelo número apropriado de espaços. Para inserir um tab
" real, use ctrl-v <tab>
set expandtab

" um tab no começo da linha, insere espaços de acordo com 'shiftwidth'. Nos
" outros lugares é usado 'tabstop'. Um backspace vai apagar um 'shiftwidth'.
set smarttab

" mostra os comandos barra de status
set showcmd

" mostra o número das linhas
"set number

" quando estiver usando a busca '/', pula para o texto encontrado enquanto
" está digitando.
set incsearch

" quando um parêntese/chave/colchete é inserido, o cursor vai rapidamente para
" o par que abre este parêntese/chave/colchete.
set showmatch

" destaca o texto procurado (não gosto de deixar definido por padrão).
set hlsearch

" autoindentação
set autoindent smartindent

" quando estiver rolando para cima ou para baixo, exibir pelo menos 3 linhas
set scrolloff=3
