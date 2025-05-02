# 💻 Full-Stack Grind: SQL, JS & LeetCode Tears 

**"SELECT * FROM solutions WHERE confidence > 0.1 ORDER BY caffeine_level DESC"**

### 🎪 The Coding Circus
- **SQL**: Where `JOIN` feels more complicated than my last relationship
- **JavaScript**: `typeof problem === "undefined"` until 3am
- **LeetCode**: Officially diagnosed with "Over-optimization Syndrome"

### 🗃️ Project Highlights
```sql
SELECT 
  language, 
  COUNT(*) AS problems_solved,
  SUM(CASE WHEN understood = TRUE THEN 1 ELSE 0 END) AS actual_knowledge,
  ARRAY_AGG(DISTINCT 'https://stackoverflow.com') AS references_used
FROM 
  coding_journey
WHERE 
  timestamp BETWEEN '2023-01-01' AND NOW()
  AND error_count < 100
GROUP BY 
  imposter_syndrome_level
HAVING 
  COUNT(DISTINCT caffeine_sources) > 0
ORDER BY 
  last_minute_panic DESC;
