    -- Questão 1
    SELECT COUNT("endDate")	AS "currentExperiences"
	FROM public.experiences
	;
    -- Questão 2
 	SELECT count(educations.id) AS "id","userId" AS "educations" FROM educations
	WHERE "endDate" IS NOT NULL
	GROUP BY "userId"
	ORDER BY "id" DESC
	;
    -- Questão 3
	SELECT  COUNT(testimonials.id)AS "testimonailCount", name AS "writer"
	FROM testimonials 
	JOIN users
	ON "writerId"= users.id
	WHERE users.id=435
	GROUP BY "writer"
	ORDER BY "testimonailCount" DESC;
    -- Questão 4
	SELECT MAX(jobs.salary) AS "maximumSalary" , roles.name AS "role"
	FROM jobs
	JOIN roles
	ON "roleId"=roles.id
	WHERE jobs.active = true
	GROUP BY "role"
	ORDER BY "maximumSalary" ASC;
	
	--Questão Bônus
	