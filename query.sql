create or replace table MASTER_DB.CHESTIONAR.COMMUNICATION as 
select c.*,
        case
        when question in ('C1','C7','C15','C16','C17','C25','C26','C35','C36','C37','C50','C51','C52','C59','C60')
        then 'non-asertiv'
        when question in ('C4','C6','C10','C11','C20','C21','C28','C29','C30','C39','C40','C48','C49','C55','C56')
        then 'agresiv'
        when question in ('C3','C5','C9','C12','C13','C19','C22','C31','C32','C41','C42','C46','C47','C54','C57')
        then 'manipulator'
        when question in ('C2','C8','C14','C18','C23','C24','C27','C33','C34','C38','C43','C44','C45','C53','C58')
        then 'asertiv'
        end as Stil
from MASTER_DB.CHESTIONAR.COMMUNICATION c;

create or replace table MASTER_DB.CHESTIONAR.COMMUNICATION as 
select c.*,
case
when question in ('C1','C7','C15','C16','C17','C25','C26','C35','C36','C37','C50','C51','C52','C59','C60') and answer='c1'
then 'non-asertiv'

when question in ('C4','C6','C10','C11','C20','C21','C28','C29','C30','C39','C40','C48','C49','C55','C56') and answer='c1'
then 'agresiv'

when question in ('C3','C5','C9','C12','C13','C19','C22','C31','C32','C41','C42','C46','C47','C54','C57') and answer='c1'
then 'manipulator'

when question in ('C2','C8','C14','C18','C23','C24','C27','C33','C34','C38','C43','C44','C45','C53','C58') and answer='c1'
then 'asertiv'

else null
end as Stil_c1
from MASTER_DB.CHESTIONAR.COMMUNICATION c;