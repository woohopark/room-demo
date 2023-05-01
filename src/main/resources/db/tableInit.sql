Hibernate:

    drop table if exists facility CASCADE
Hibernate:

    drop table if exists fee CASCADE
Hibernate:

    drop table if exists pay CASCADE
Hibernate:

    drop table if exists rental CASCADE
Hibernate:

    drop table if exists reservation CASCADE
Hibernate:

    drop table if exists review CASCADE
Hibernate:

    drop table if exists space CASCADE
Hibernate:

    drop table if exists users CASCADE
Hibernate:

    create table facility (
       facility_id bigint generated by default as identity,
        light boolean,
        speaker boolean,
        table_yn boolean,
        tableware boolean,
        wifi boolean,
        primary key (facility_id)
    )
Hibernate:

    create table fee (
       fee_id bigint generated by default as identity,
        fee integer not null,
        fee_type varchar(255),
        morning_afternoon varchar(255),
        package_type varchar(255),
        primary key (fee_id)
    )
Hibernate:

    create table pay (
       id bigint generated by default as identity,
        pay_date date,
        payment varchar(255),
        total_pay double not null,
        primary key (id)
    )
Hibernate:

    create table rental (
       rental_id bigint generated by default as identity,
        background_paper boolean,
        party_supplies boolean,
        primary key (rental_id)
    )
Hibernate:

    create table reservation (
       people_count integer not null,
        request_message varchar(250) not null,
        reservation_date date not null,
        reservation_state_status integer,
        response_expiration_date date not null,
        response_message varchar(250),
        time integer not null,
        pay_id bigint not null,
        space_id bigint,
        user_no bigint,
        primary key (pay_id)
    )
Hibernate:

    create table review (
       review_id bigint generated by default as identity,
        context clob not null,
        create_date date,
        score integer not null,
        update_date date,
        guest_id bigint,
        space_id bigint,
        primary key (review_id)
    )
Hibernate:

    create table space (
       space_id bigint generated by default as identity,
        create_date timestamp,
        latitude numeric(10,7),
        location varchar(5) not null,
        longitude numeric(10,7),
        name varchar(30),
        people_count integer,
        space_type varchar(10) not null,
        update_date timestamp,
        with_dog boolean,
        facility_id bigint,
        fee_id bigint,
        host_id bigint,
        rental_id bigint,
        primary key (space_id)
    )
Hibernate:

    create table users (
       user_type varchar(31) not null,
        user_no bigint generated by default as identity,
        age integer not null,
        create_date timestamp,
        id varchar(30) not null,
        location varchar(10) not null,
        money integer not null,
        name varchar(20) not null,
        nick_name varchar(30) not null,
        password varchar(100) not null,
        role varchar(255) not null,
        sexual varchar(6) not null,
        update_date timestamp,
        birth_date date,
        business_number integer,
        primary key (user_no)
    )