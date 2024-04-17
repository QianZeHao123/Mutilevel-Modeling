#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#let today = datetime.today()
#show: project.with(
  title: "Multilevel Modeling Notes",
  authors: ((name: "Zehao Qian", email: "zehao.qian.cn@gmail.com"),),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  date: today.display("[month repr:long] [day], [year]"),
  // date: "2021-10-14"
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!
// ------------------------------------------------
// outline part
#show link: underline
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}
#outline(indent: auto)
// ------------------------------------------------

= Three-level Modele

== Empty Model

$y_"tij"=gamma_0+u_"ij"+v_j+epsilon_"tij"$, where $u_"ij" tilde N (0, sigma_n^2)$, $v_j tilde N(0,sigma_h^2)$, $epsilon_"tij" tilde N(0.sigma^2)$

== Building

$y_"tij"= a_"ij"+b T_"tij" + epsilon_"tij"$

$a_"ij" = a_j+alpha^"(1)"e_"ij"+alpha^"(2)" z_"ij" + alpha^"(3)" t_"ij"$

$a_j = a + gamma s_j + u_j$, where $u_j tilde N(0, sigma_u^2)$, Random Intercept
Model

== Covariates

=== Level 1

$T_"tij" = t$, $t=1,2,3$

=== Level 2

$e_"ij"$ (exper), $z_"ij"$ (gender), $t_"ij"$ (intervention)

=== Level 3

$s_j arrow$ size of hospital