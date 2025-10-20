SELECT W2.id
FROM Weather W1
CROSS JOIN Weather W2
WHERE DATE_SUB(W2.recordDate, INTERVAL 1 DAY) = W1.recordDate
AND (W1.temperature < W2.temperature);