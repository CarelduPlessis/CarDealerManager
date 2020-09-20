-------------------------------------------------------------------
Resouces Used 
-------------------------------------------------------------------

Title Of website: Scaffold Identity in ASP.NET Core projects

Source : https://docs.microsoft.com/en-us/aspnet/core/security/authentication/scaffold-identity?view=aspnetcore-3.1&tabs=visual-studio


* Setup the empty Web Project with Identity

MVC : Model View Controller

1.0 Create the project in a MVC framework without the Identity.

1.1 right click on general project name in solution explorer, its right under the project Solution (for this project its CarDealerManager).

1.2 Hover with the mouse over the "Add" button

1.3 select the button called "New Scaffolded Item..."

1.4 In the listbox select Identity

1.5 select the button called "Identity"

1.6 select the button called "Add"

1.7 In the to file path box cope and past this text ( ~/Views/Shared/_Layout.cshtml )  in there.

1.8 Check the box called "Override All files"

1.9 Create a Data context class and Name it like this ProjectName.Data.ProjectNameIdentityContext (for this project its CarDealerManager.Data.CarDealerManagerIdentityContext)

2.0 open up the Startup.cs class.

2.1 copy the code below and pass this code over the existing Startup class

```html
public class Startup
{
    public Startup(IConfiguration configuration)
    {
        Configuration = configuration;
    }

    public IConfiguration Configuration { get; }

    public void ConfigureServices(IServiceCollection services)
    {
        services.AddControllersWithViews();
        services.AddRazorPages();
    }

    public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
    {
        if (env.IsDevelopment())
        {
            app.UseDeveloperExceptionPage();
            app.UseDatabaseErrorPage();
        }
        else
        {
            app.UseExceptionHandler("/Home/Error");
            app.UseHsts();
        }
        app.UseHttpsRedirection();
        app.UseStaticFiles();

        app.UseRouting();

        app.UseAuthentication();
        app.UseAuthorization();

        app.UseEndpoints(endpoints =>
        {
            endpoints.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");
            endpoints.MapRazorPages();
        });
    }
}
```

2.2 In Visual Studio Menu navigate to: Tools >> NuGet Packet Manager >> Packet Manager Console

2.3 copy this code: Install-Package Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore and past the code in the Console.

2.4 enter and wait for it to finish. 

2.5 copy this code: Add-Migration CreateIdentitySchema and past the code in the Console.

2.6 enter and wait for it to finish. 

2.7 copy this code: Update-Database and past the code in the Console.

2.6 enter and wait for it to finish. 



* Custom Identity

1.0 Go To: Areas >> Pages >> Account 

1.1 open Register.cshtml and Register.cshtml.cs

1.2 In Register.cshtml.cs add extra fields for Registering in InputModel.  

For example: 

[Required]
[MaxLength(100)]
[StringLength(100, ErrorMessage = "The {0} must be at least {2} and at max {1} characters long.", MinimumLength = 2)]
[Display(Name = "User Name")]
public string UserName { get; set; }


1.3 in "OnPostAsync" Task method look for "IdentityUser" and change IdentityUser { UserName = Input.Email, Email = Input.Email }; to IdentityUser { UserName = Input.UserName, Email = Input.Email };


Note: maybe you can add the extra fields here.


1.4 open Login.cshtml.cs

1.4 In Login.cshtml.cs look for the code below 

// This doesn't count login failures towards account lockout
// To enable password failures to trigger account lockout, set lockoutOnFailure: true
var result = await _signInManager.PasswordSignInAsync(Input.Email, Input.Password, Input.RememberMe, lockoutOnFailure: false);


1.5 Make chages to the code as displayed below:


Note: the code below will allow me to login with the email and display the users name on loging in

// use the Email to find the User inorder to get users name
var user = _userManager.FindByEmailAsync(Input.Email).Result;

// This doesn't count login failures towards account lockout
// To enable password failures to trigger account lockout, set lockoutOnFailure: true
var result = await _signInManager.PasswordSignInAsync(user.UserName, Input.Password, Input.RememberMe, lockoutOnFailure: false);




Layers

DATA : Real database

Business: Models of your project

Presentation: User Interface



* How to Create the Models for the database (Business Layer)

1.1 Create the classes in the "Models" folder and give them appropriate names

1.2 Add fields with the mind set off a database table and add foreign keys in the appropriate class.




* How to Create the Create, Read, Update, Delete (CRUD) pages (Presentation Layer)

1.0 right click on the "Controllers" folder.

1.1 Hover with the mouse over the "Add" button.

1.2 Click on the button "Controller...".

1.3 Select "MVC Controller with Views, using Entity Framework" and click on "Add" button.

1.4 select a Model class.

* note: CRUD(Create Read Update Delete) is now CRED(Create Read Edit Delete) in my Project (I will fix this in the future) 

1.5 Create the Data Context Class and name it ProjectName.Data.ProjectNameCREDContext (for this project it looks like this: CarDealerManager.Data.CarDealerManagerCREDContext)

1.6 Click the "Add" button

1.7 Click the "Add" button again

1.8 Repeat the steps from 1.0 to 1.4



* How to Create the real database (DATA Layer)
In Visual Studio Menu Navigate To: Tools >> NuGet Packet Manager >> Packet Manager Console

* Create database
add-migration -context CarDealerManagerCREDContext

Give Name to database
Name: CREDdb

* update database
update-database


* Add restrictions to the deletion of records in tables that have foreign keys. 

1.0 Go to: 'Migrations' >> 'CarDealerManagerCRED'

1.1 open CREDdb and look for onDelete: ReferentialAction.Cascade

1.2 change to onDelete: ReferentialAction.Restrict



* Change The Shared Layout

1.0 Go to: View >> Shared >> _Layout.cshtml

1.1 Copy the code below and modify it to suit the project

```html

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>@ViewData["Title"] - WebRP</title>
    <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/css/site.css" />
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
            <div class="container">
                <a class="navbar-brand" asp-area="" asp-page="/Index">WebRP</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse">
                    <partial name="_LoginPartial" />
                    <ul class="navbar-nav flex-grow-1">
                        <li class="nav-item">
                            <a class="nav-link text-dark" asp-area="" asp-page="/Index">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-dark" asp-area="" asp-page="/Privacy">Privacy</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container">
        <main role="main" class="pb-3">
            @RenderBody()
        </main>
    </div>

    <footer class="border-top footer text-muted">
        <div class="container">
            &copy; 2019 - WebRP - <a asp-area="" asp-page="/Privacy">Privacy</a>
        </div>
    </footer>

    <script src="~/lib/jquery/dist/jquery.min.js"></script>
    <script src="~/lib/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="~/js/site.js" asp-append-version="true"></script>

    @RenderSection("Scripts", required: false)
</body>
</html>

```




Like this:




```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>@ViewData["Title"] - Super Car Dealer</title>
    <link rel="stylesheet" href="~/lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/css/site.css" />
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
            <div class="container">
                <a class="navbar-brand" asp-area="" asp-controller="Home" asp-action="Index">Super Car Dealer</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse">
                    <partial name="_LoginPartial" />
                    <ul class="navbar-nav flex-grow-1">
                        <li class="nav-item">
                            <a class="nav-link text-dark" asp-area="" asp-controller="Home" asp-action="Index">Home</a>
                        </li>
                        <!--if user is loged in then display the following navigation buttons-->
                        @if (User.Identity.IsAuthenticated)
                         {
                            <li class="nav-item">
                                <a class="nav-link text-dark" asp-area="" asp-controller="Cars" asp-action="Index">Car</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark" asp-area="" asp-controller="Suppliers" asp-action="Index">Supplier</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark" asp-area="" asp-controller="Customers" asp-action="Index">Customer</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark" asp-area="" asp-controller="Stores" asp-action="Index">Store</a>
                            </li>
                         }
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!--<div class="container">-->
    <!--<main role="main" class="pb-3">-->
    @RenderBody()
    <!--</main>-->
    <!--</div>-->

    <footer class="border-top footer text-muted">
        <div class="container">
            &copy; 2020 - Super Car Dealer 
        </div>
    </footer>
    <script src="~/lib/jquery/dist/jquery.min.js"></script>
    <script src="~/lib/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="~/js/site.js" asp-append-version="true"></script>
    @RenderSection("Scripts", required: false)
</body>
            </html>
>
```

* In the 'Views' folder go to the Cars, Suppliers, Customers, and Stores folder. Then go in each of their pages and cut and paste their HTML in the middle of the code below.

<div class="container">
    <main role="main" class="pb-3">
   
   </main>
</div>-->

Note: As you Navigate in the CRUD pages you will find that they share the same style.



* make changes to your home page by following the code below or use a different design

1.0 get a picuter for the background and create a img folder in the wwwroot folder then add the picure to the img folder

1.2 change the file path of the image tage.


```html
@{
    ViewData["Title"] = "Home Page";
}
<!--
<div class="text-center">
    <h1 class="display-4">Welcome</h1>
    <p>Learn about <a href="https://docs.microsoft.com/aspnet/core">building Web apps with ASP.NET Core</a>.</p>
</div>
-->
<style>
    img {
        animation: fadeInAnimation ease 3s;
        animation-iteration-count: 1;
        animation-fill-mode: forwards;
    }

    @@keyframes fadeInAnimation {
        0% {
            /* opacity: 0; */
            clip-path: polygon(0 0, 41% 49%, 0 100%, 49% 53%, 100% 100%, 54% 50%, 100% 0, 49% 45%);
        }

        100% {
            /* opacity: 1;*/
            clip-path: polygon(0 0, 0 49%, 0 100%, 54% 100%, 100% 100%, 100% 50%, 100% 0, 51% 0);
        }
    }
</style>

<div>
    <main role="main">
        <h1 style="text-align: center; "> Welcome To Super Car Dealer </h1>
        <img src="~/img/Car.jpg" alt="a picture of a yellow lamborghini" />
    </main>
</div>
```
