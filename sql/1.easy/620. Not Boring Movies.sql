select *
from cinema
where id % 2 != 0 and
description  != 'boring'
ORDER BY rating DESC;;