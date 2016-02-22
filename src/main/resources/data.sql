INSERT INTO person (
    client_id,
    first_name,
    last_name,
    email_address,
    street_address,
    city,
    state,
    zip_code
) VALUES (
    '0',
    'John',
    'Smith',
    'fake1@aquent.com',
    '123 Any St.',
    'Asheville',
    'NC',
    '28801'
), (
    '0',
    'Jane',
    'Smith',
    'fake2@aquent.com',
    '123 Any St.',
    'Asheville',
    'NC',
    '28801'
);

INSERT INTO client (
    company_name,
    website,
    phone_number,
    street_address,
    city,
    state,
    zip_code
) VALUES (
    'Aquent',
    'https://www.aquent.com',
    '617-535-5000',
    '501 Boylston St.',
    'Boston',
    'MA',
    '02116'
), (
    'FakeCo.',
    'https://www.fakeco.com',
    '800-111-5555',
    '678 Fake St.',
    'Fake Town',
    'WA',
    '01234'
);
