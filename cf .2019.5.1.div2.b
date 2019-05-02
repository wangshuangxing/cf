https://codeforces.com/contest/1156/problem/B


You are given a string, consisting of lowercase Latin letters.

A pair of neighbouring letters in a string is considered ugly if these letters are also neighbouring in a alphabet. For example, string "abaca" contains ugly pairs at positions (1,2)(1,2) — "ab" and (2,3)(2,3) — "ba". Letters 'a' and 'z' aren't considered neighbouring in a alphabet.

Can you rearrange the letters of a given string so that there are no ugly pairs? You can choose any order of the letters of the given string but you can't add any new letters or remove the existing ones. You can also leave the order the same.

If there are multiple answers, print any of them.

You also have to answer TT separate queries.

Input
The first line contains a single integer TT (1≤T≤1001≤T≤100) — the number of queries.

Each of the next TT lines contains string ss (1≤|s|≤100)(1≤|s|≤100) — the string for the next query. It is guaranteed that it contains only lowercase Latin letters.

Note that in hacks you have to set T=1T=1.

Output
Print TT lines. The ii-th line should contain the answer to the ii-th query.

If the answer for the ii-th query exists, then print such a rearrangment of letters of the given string that it contains no ugly pairs. You can choose any order of the letters of the given string but you can't add any new letters or remove the existing ones. You can also leave the order the same.

If there are multiple answers, print any of them.

Otherwise print "No answer" for that query.

Example
inputCopy
4
abcd
gg
codeforces
abaca
outputCopy
cadb
gg
codfoerces
No answer
Note
In the first example answer "bdac" is also correct.

The second example showcases the fact that only neighbouring in alphabet letters are not allowed. The same letter is ok.

There are lots of valid answers for the third example.




代码：

思路因该是根据奇偶性来分只用判断接口处就可以了因为已经排好序了*/
/*******************B***************************/
/*
#include<bits/stdc++.h>
using namespace std;
int main(){
	int t;
	cin>>t;
	while(t--){
		string a="",b="",ss;
		cin>>ss;
		sort(ss.begin(),ss.end());
		for(int i=0;i<ss.size();i++)
			if(ss[i]%2)
				a+=ss[i];
			else
				b+=ss[i];
		if(abs(a[a.size()-1]-b[0])!=1)	
			cout<<a<<b<<endl;
		else if(abs(b[b.size()-1]-a[0])!=1)
			cout<<b<<a<<endl;
		else
			puts("No answer");
	}
	return 0;
}
*/


















