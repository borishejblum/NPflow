#include <RcppArmadillo.h>
using namespace Rcpp;
using namespace arma;

// [[Rcpp::depends(RcppArmadillo)]]

//' C++ implementation
//' 
//'
//'@param c is an MCMC partition
//'
//'@export
//'
//'@examples
//'c <- c(1,1,2,3,2,3))
//'vclust2mcoclustC(c)
//'
//'
// [[Rcpp::export]]
List vclust2mcoclustC(NumericVector c){
  
  int n = c.size(); 
  
  mat cc = mat(n, n, fill::zeros);
  for(int i=0; i<n-1; i++){
    for(int j=i+1; j<n; j++){
      cc(i,j)=(c(i) == c(j) );
      cc(j,i) = cc(i,j);
    }
  }
return Rcpp::List::create(Rcpp::Named("Coclust") = cc);

}