package org.khelekore;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.batch.Main;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;

public class Compiler {

    public static void main (String[] args) {
	System.out.println ("Compiler started with args: " + 
			    Arrays.asList (args));
	try {
	    PrintWriter out = new PrintWriter (System.out);
	    PrintWriter err = new PrintWriter (System.err);
	    Main main = new Main (out, err, false, null, null);
	    BufferedReader br = 
		new BufferedReader (new InputStreamReader (System.in));
	    boolean first = true;
	    while (true) {
		String line = br.readLine ();
		if (line == null)
		    return;
		System.out.println ("read line: '" + line + "'");
		line = line.trim ();
		if (line.equals ("exit"))
		    return;
		try {
		    // can only pass "-d none " one time
		    if (first)
			line = "-d none " + line;
		    String[] opts = line.split (" ");
		    main.compile (opts);
		} catch (AbortCompilationUnit e) {
		    // ignore, expected when compilation fails
		    System.out.println ("Got exception: " + e);
		}
		System.out.println ("compilation complete");
		first = false;
	    }
	} catch (IOException e) {
	    e.printStackTrace ();
	}
    }
}