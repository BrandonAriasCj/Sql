select * from tareas;

select nombre, curso, fecha_lim from tareas where fecha_lim = sysdate;

select nombre, curso, fecha_lim,link  from tareas where fecha_lim -  sysdate < 3;

select * from tareas;
