SELECT member_name,status,costs
FROM FamilyMembers
JOIN (
    SELECT family_member, SUM(amount*unit_price) as costs
    FROM Payments
        JOIN Goods ON Payments.good=Goods.good_id
        JOIN GoodTypes ON Goods.type=GoodTypes.good_type_id
    WHERE good_type_name LIKE 'entertainment'
    GROUP BY family_member
) as payTable ON payTable.family_member=FamilyMembers.member_id