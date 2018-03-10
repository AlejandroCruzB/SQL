select Instructor.Nombre_Instructor, Participantes.Nombre_Participantes, Cursos.Nombre_curso
from Instructor
inner join Cursos on Cursos.InstructorID=Instructor.InstructorID
inner join Cursos_Participantes on Cursos_Participantes.CursosID=Cursos.CursosID
inner join Participantes on Participantes.ParticipantesID=Cursos_Participantes.ParticipantesID;
