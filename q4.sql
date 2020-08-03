INSERT INTO
    book (id, title)
VALUES
    (11, 'The Programatic Programmer');

INSERT INTO
    member (id, name)
VALUES
    (43, 'Sunny Yang');

INSERT INTO
    checkout_item (member_id, book_id)
SELECT
    member.id,
    book.id
FROM
    member,
    book
WHERE
    member.name = 'Sunny Yang'
    AND book.title = 'The Programatic Programmer';

SELECT
    member.name
FROM
    member,
    checkout_item,
    book
WHERE
    member.id = checkout_item.member_id
    AND checkout_item.book_id = book.id
    AND book.title = 'The Programatic Programmer';