SELECT member_name,status,costs
FROM FamilyMembers
JOIN (
    SELECT family_member, SUM(amount*unit_price) as costs
    FROM Payments
    WHERE YEAR(date)=2005
    GROUP BY family_member
) as payTable ON payTable.family_member=FamilyMembers.member_id