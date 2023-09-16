<html>
<head>
%{--    <meta name="layout" content="${gspLayout?: 'main'}"/>--}%
%{--    <title><g:message code='springSecurity.login.title'/></title>--}%
    <title>Aplicação - Login</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="login1.css"/>
%{--    <asset:stylesheet src="login.css"/>--}%

</head>

<body>

<section class="vh-100 bg-dark">
    <div class="d-flex justify-content-center h-100">
        <div class="user_card">
            <div class="d-flex justify-content-center">
                <div class="brand_logo_container">
                    <asset:image src="tundercats.png" alt="TunderCats" class="brand_logo"/>
                </div>
            </div>
            <div class="d-flex justify-content-center form_container">
                <form class="form-signin" action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" autocomplete="off">
                    <div class="input-group mb-3">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" class="form-control input_user" name="${usernameParameter ?: 'username'}" id="username" autocapitalize="none" placeholder="usuário"/>
                    </div>
                    <div class="input-group mb-2">
                        <div class="input-group-append">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" class="form-control input_pass" name="${passwordParameter ?: 'password'}" id="password" placeholder="senha"/>
                    </div>
                    <div class="form-group">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customControlInline">
                            <label class="custom-control-label" for="customControlInline">Lembrar-me</label>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center mt-3 login_container">
                        <button type="submit" name="button" class="btn login_btn">Entar</button>
                    </div>
                </form>
            </div>

            <div class="mt-4">
                <div class="d-flex justify-content-center links">
                    Não tem cadastro? <a href="#" class="ml-2">Cadastre-se</a>
                </div>
                <div class="d-flex justify-content-center links">
                    <a href="#">Esqueceu sua senha?</a>
                </div>
            </div>
        </div>
    </div>
</section>

%{--<section class="vh-100 gradient-custom">--}%
%{--    <div class="container py-5 h-100">--}%
%{--        <div class="row d-flex justify-content-center align-items-center h-100">--}%
%{--            <div class="col-12 col-md-8 col-lg-6 col-xl-5">--}%
%{--                <div class="card bg-dark text-light" style="border-radius: 1rem;">--}%
%{--                    <div class="card-body p-5 text-center">--}%

%{--                        <form class="form-signin" action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" autocomplete="off">--}%

%{--                            <div class="mb-md-5 mt-md-4 pb-5">--}%

%{--                                <h2 class="fw-bold mb-2 text-uppercase">LOGIN</h2>--}%
%{--                                <p class="text-white mb-5">Entre com seu nome de usuário e senha!</p>--}%
%{--                                <div class="form-outline form-white mb-4">--}%
%{--                                    <label class="form-label" for="username">Usuário</label>--}%
%{--                                    <input type="text" class="form-control form-control-lg" name="${usernameParameter ?: 'username'}" id="username" autocapitalize="none" />--}%
%{--                                </div>--}%

%{--                                <div class="form-outline form-white mb-4">--}%
%{--                                    <label class="form-label" for="password">Senha</label>--}%
%{--                                    <input type="password" class="form-control form-control-lg" name="${passwordParameter ?: 'password'}" id="password"/>--}%
%{--                                </div>--}%

%{--                                <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Esqueceu sua senha?</a></p>--}%

%{--                                <button class="btn btn-outline-light btn-lg px-5" type="submit">Entrar</button>--}%

%{--                            </div>--}%

%{--                            <div>--}%
%{--                                <p class="mb-0">Ainda não tem uma conta? <g:link controller="register">Cadastre-se</g:link></p>--}%
%{--                            </div>--}%
%{--                        </form>--}%

%{--                    </div>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--</section>--}%

%{--<div class="row">--}%
%{--    <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">--}%
%{--        <div class="card card-signin my-5">--}%
%{--            <div class="card-body">--}%
%{--                <h5 class="card-title text-center">Please Login</h5>--}%
%{--                <g:if test='${flash.message}'>--}%
%{--                    <div class="alert alert-danger" role="alert">${flash.message}</div>--}%
%{--                </g:if>--}%
%{--                <form class="form-signin" action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" autocomplete="off">--}%
%{--                    <div class="form-group">--}%
%{--                        <label for="username">Username</label>--}%
%{--                        <input type="text" class="form-control" name="${usernameParameter ?: 'username'}" id="username" autocapitalize="none"/>--}%
%{--                    </div>--}%

%{--                    <div class="form-group">--}%
%{--                        <label for="password">Password</label>--}%
%{--                        <input type="password" class="form-control" name="${passwordParameter ?: 'password'}" id="password"/>--}%
%{--                        <i id="passwordToggler" title="toggle password display" onclick="passwordDisplayToggle()">&#128065;</i>--}%
%{--                    </div>--}%

%{--                    <div class="form-group form-check">--}%
%{--                        <label class="form-check-label">--}%
%{--                            <input type="checkbox" class="form-check-input" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/> Remember me--}%
%{--                        </label>--}%
%{--                    </div>--}%
%{--                    <button id="submit" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>--}%
%{--                    <hr class="my-4">--}%
%{--                    <p>Don't have an account? <g:link controller="register">Register</g:link></p>--}%
%{--                </form>--}%
%{--            </div>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--</div>--}%

<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function(event) {
        document.forms['loginForm'].elements['username'].focus();
    });
    function passwordDisplayToggle() {
        var toggleEl = document.getElementById("passwordToggler");
        var eyeIcon = '\u{1F441}';
        var xIcon = '\u{2715}';
        var passEl = document.getElementById("password");
        if (passEl.type === "password") {
            toggleEl.innerHTML = xIcon;
            passEl.type = "text";
        } else {
            toggleEl.innerHTML = eyeIcon;
            passEl.type = "password";
        }
    }
</script>
</body>
</html>