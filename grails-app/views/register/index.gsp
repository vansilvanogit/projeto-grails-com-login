<html>
<head>
%{--    <meta name="layout" content="${gspLayout?: 'main'}"/>--}%
%{--    <title><g:message code='springSecurity.login.title'/></title>--}%
    <title>Cadastro de usuário</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="login.css"/>
</head>

<body>
<section class="vh-100 gradient-custom">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card bg-dark text-light" style="border-radius: 1rem;">
                    <div class="card-body p-5">

                        <form class="form-signin" action="register" method="POST" id="loginForm" autocomplete="off">

                            <div class="mb-md-5 mt-md-4 pb-5">

                                <h5 class="card-title text-center text-white">Cadastre seu usuário e senha!</h5>
                                <g:if test='${flash.message}'>
                                    <div class="alert alert-danger" role="alert">${flash.message}</div>
                                </g:if>
                                <div class="form-outline form-white mb-4">
                                    <label for="role.id">Função</label>
                                    <g:select class="form-control" name="role.id"
                                              from="${seguranca.Role.list()}"
                                              optionKey="id" />
                                </div>

                                <div class="form-outline form-white mb-4">
                                    <label class="form-label" for="username">Nome de usuário</label>
                                    <input type="text" placeholder="Nome de usuário" class="form-control" name="username" id="username" autocapitalize="none"/>
                                </div>

                                <div class="form-outline form-white mb-4">
                                    <label class="form-label" for="password">Crie uma senha</label>
                                    <input type="password" placeholder="sua senha" class="form-control" name="password" id="password"/>
                                </div>

                                <div class="form-outline form-white mb-4">
                                    <label class="form-label" for="repassword">Confirme sua senha</label>
                                    <input type="password" placeholder="Confirme sua senha" class="form-control" name="repassword" id="repassword"/>
                                </div>

                                <div class="form-outline form-white mb-4">
                                    <label class="form-label" for="fullname">Nome completo</label>
                                    <input type="text" placeholder="Seu nome completo" class="form-control" name="fullname" id="fullname" autocapitalize="none"/>
                                </div>

                                <p class="small mb-5 pb-lg-2 text-center"><a class="text-white-50" href="#!">Esqueceu sua senha?</a></p>
                                <div class="text-center">
                                    <button class="btn btn-outline-light btn-lg px-5" type="submit">Cadastrar</button>
                                </div>

                            </div>
                            <div>
                                <p class="text-center">Já possui um cadastro? <g:link controller="login" action="auth">Faça login</g:link></p>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

%{--<div class="row">--}%
%{--    <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">--}%
%{--        <div class="card card-signin my-5">--}%
%{--            <div class="card-body">--}%
%{--                <h5 class="card-title text-center">Register Here</h5>--}%
%{--                <g:if test='${flash.message}'>--}%
%{--                    <div class="alert alert-danger" role="alert">${flash.message}</div>--}%
%{--                </g:if>--}%
%{--                <form class="form-signin" action="register" method="POST" id="loginForm" autocomplete="off">--}%
%{--                    <div class="form-group">--}%
%{--                        <label for="role.id">Role</label>--}%
%{--                        <g:select class="form-control" name="role.id"--}%
%{--                                  from="${seguranca.Role.list()}"--}%
%{--                                  optionKey="id" />--}%
%{--                    </div>--}%

%{--                    <div class="form-group">--}%
%{--                        <label for="username">Username</label>--}%
%{--                        <input type="text" placeholder="Your username" class="form-control" name="username" id="username" autocapitalize="none"/>--}%
%{--                    </div>--}%

%{--                    <div class="form-group">--}%
%{--                        <label for="password">Password</label>--}%
%{--                        <input type="password" placeholder="Your password" class="form-control" name="password" id="password"/>--}%
%{--                    </div>--}%

%{--                    <div class="form-group">--}%
%{--                        <label for="password">Re-Enter Password</label>--}%
%{--                        <input type="password" placeholder="Re-enter password" class="form-control" name="repassword" id="repassword"/>--}%
%{--                    </div>--}%

%{--                    <div class="form-group">--}%
%{--                        <label for="username">Full Name</label>--}%
%{--                        <input type="text" placeholder="Your full name" class="form-control" name="fullname" id="fullname" autocapitalize="none"/>--}%
%{--                    </div>--}%

%{--                    <button id="submit" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>--}%
%{--                    <hr class="my-4">--}%
%{--                    <p>Already have an account? <g:link controller="login" action="auth">Login</g:link></p>--}%
%{--                </form>--}%
%{--            </div>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--</div>--}%

<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function(event) {
        document.forms['loginForm'].elements['username'].focus();
    });
</script>
</body>
</html>