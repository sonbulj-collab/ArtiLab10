user(ali, '1234').
user(sara, 'abcd').

login :-
    login_attempt(3).

login_attempt(Attempts) :-
    write('Username: '), read(Username),
    write('Password: '), read(Password),
    (   user(Username, Password)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        Remaining is Attempts - 1,
        (   Remaining > 0
        ->  login_attempt(Remaining)
        ;   write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl
        )
    ).
