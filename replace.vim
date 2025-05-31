
" Pasos para convertir un documento transformado de LaTeX a Typst con Pandoc.



" Convertir los enlaces.
%s/\v\#link\(\<(.{-})\>\)\[\]/@\1/gc

" Hacer lasitálicas syntactic sugar.
%s/\v\#emph\[(.{-})\]/_\1_/gc

" Eliminar las barras invertidas delante de `(`.
%s/\v\\\(/(/gc


" Convertir los delimitadores de entornos display math.
%s/\v\\\$\\\$\ /\$\ /gc
%s/\v\ \\\$\\\$/\ \$/gc


" Quitar los espacios en las comas de las n-uplas/listas...
%s/\v\ ,\ /,\ /gc


%s/\v\\\\rset/RR/gc

%s/\varrow\.r/arrow\.r\.long/gc

%s/\v\\\\longrightarrow/arrow.r.long/gc 

%s/\vupright\((.{-})\)/\1/gc

%s/\vcircle\.stroked\.tiny/circle\.tiny/gc

%s/\v…/.../gc

%s/\v\ prime\.double/''/gc

%s/\v\ prime/'/gc

%s/\vcircle\.stroked\.tiny/compose/gc

%s/nothing/emptyset/gc

%s/\vsect/inter/gc

%s/\v\\\\mathbf\{(P)\}/bold\(\1\)/gc

%s/\v([f,d,g])\ \((.{-})\)/\1(\2)/gc

%s/\v\(-\ 1\)/(-1)/gc

" Hacerlo antes de dos anidados del siguiente.

%s/\v([a-z])\^\(‾\)/dash(\1)/gc

%s/\v(triangle)\.stroked\.t\ \{\ (.{-})\ \}/\1 \{\2\}/gc

%s/\vcircle\.tiny/compose/gc

%s/\vtack\.t/perp/gc

%s/\v"medio"\ \[/"medio"[/gc

%s/\v\\\\isom\(/"Isom"(/gc

%s/\vperp_(.{-})\ /med\ tack\.t_\1\ med/gc

%s/\v\\\\/without/gc


" Ahora, buscar los puntos y comas y eliminar los que no eliminó antes.








