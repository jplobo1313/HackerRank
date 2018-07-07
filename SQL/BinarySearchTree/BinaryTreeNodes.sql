SELECT b.n,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN EXISTS (SELECT *
                     FROM BST b2
                     WHERE b2.n != b.n AND b2.p = b.n) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST b
ORDER BY b.n ASC
