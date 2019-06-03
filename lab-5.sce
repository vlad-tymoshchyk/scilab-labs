function [z] = ask(question)
  disp(question);
  res = input('','string');
  if (part(res,1) == 'y')
    z = %T;
  else
    z = %F
  end
endfunction

a="Does the conflict involve a Warwaw Pact or other Soviet allied border state?";
b="Does the conflict pose a grave threat to the political existance of the Soviet ally?";
c="Is a high risk of military confrontation with the U.S. present in the conflict?";
d="Is one of the protagonists a Soviet ally or client?";
e="Does the conflict entail repeated armed clashes or worse?";
f="Is the antagonist a sub-national group or Soviet enemy state?";
g="Does the conflict pose a grave threat to the political existance of the Soviet ally?";
h="Is one of the protagonists a potential client?";
k="Does the conflict entail repeated clashes or worse?";
l="Is the antagonist a sub-national group or Soviet enemy state?";
m="Is a high risk of military confrontation with the U.S. present in the conflict";

if(ask(a))
  if(ask(b))
    if(ask(c))
      disp('less than 15,000 troops');
    else
      disp('more than 15,000 troops');
    end
  else
    disp('verbal/diplomatic support');
  end
else
  if(ask(d))
    if(ask(e))
      if(ask(f))
        if(ask(g))
	  disp('less than 15,000 troops');
    else
	  if(ask(m))
	    disp('verbal/diplomatic support');
	  else
	    disp('arms delivery');
	  end
    end
      else
    disp('verbal/diplomatic support');
      end
    else
      disp('verbal/diplomatic support');
    end
  else
  end
end
