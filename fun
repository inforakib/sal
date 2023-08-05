// start the name of ALLAH
// EDIT FUN FUN CODE
#include<bits/stdc++.h>
using namespace std;
#define ll long long
#define endl "\n"
const  ll mod=1e9+7;

int32_t main()
{
ios_base::sync_with_stdio(0);
cin.tie(0);
ll t=1;

cin>>t;

while(t--)
{
ll n;cin>>n;ll ar[n];
for(ll i=0;i<n;i++)
{
cin>>ar[i];
}
sort(ar,ar+n);

auto posible=[&](ll mid)->bool
{
  int cnt=1;
  for(ll l=0,r=l+1;r<n;)
  {
      if(ar[l]+mid+mid>=ar[r])
      {
          r++;
      }
      else
      {
          cnt++;
          l=r;
          r=l;
      }
  }
  return(cnt<4);
};

ll l=0,r=1000000000;
ll ans;
while(l<=r)
{
    ll mid=(l+r)/2;
    if(posible(mid))
    {
        ans=mid;
        r=mid-1;
    }
    else l=mid+1;
}
cout<<ans<<endl;

}


}
