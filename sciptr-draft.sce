function ask(node)
  disp(node);
  if (node(2) == 'ENDPOINT')
    disp('Result: ' + node(1));
  else
    disp(node(1));
    res = input('','string');
    if (part(res,1) == 'y')
      ask(node(2))
    else
      ask(node(3))
    end
  end
endfunction

a = "Does the conflict involve a Warwaw Pact or other Soviet allied border state?";
b = "Does the conflict pose a grave threat to the political existance of the Soviet ally?";
c = "Is a high risk of military confrontation with the U.S. present in the conflict?";
d = "Is one of the protagonists a Soviet ally or client?";
e = "Does the conflict entail repeated armed clashes or worse?";
f = "Is the antagonist a sub-national group or Soviet enemy state?";
g = "Does the conflict pose a grave threat to the political existance of the Soviet ally?";
h = "Is one of the protagonists a potential client?";
k = "Does the conflict entail repeated clashes or worse?";
l = "Is the antagonist a sub-national group or Soviet enemy state?";
m = "Is a high risk of military confrontation with the U.S. present in the conflict";

res1 = ['more than 15,000 troops', 'ENDPOINT'];
res2 = ['less than 15,000 troops', 'ENDPOINT'];
res3 = ['arms delivery', 'ENDPOINT'];
res4 = ['verbal/diplomatic support', 'ENDPOINT'];

// A = 
// B = 
// C = 
// D = 
// E = 
// F = 
// G = 
// H = 
// K = 
M = [m, res4, res3];
L = [l, M, res4];

ask(M);
