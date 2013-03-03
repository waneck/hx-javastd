package com.sun.org.apache.bcel.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/* ====================================================================
* The Apache Software License, Version 1.1
*
* Copyright (c) 2001 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Apache" and "Apache Software Foundation" and
*    "Apache BCEL" must not be used to endorse or promote products
*    derived from this software without prior written permission. For
*    written permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    "Apache BCEL", nor may "Apache" appear in their name, without
*    prior written permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
/**
* InstructionFinder is a tool to search for given instructions patterns,
* i.e., match sequences of instructions in an instruction list via
* regular expressions. This can be used, e.g., in order to implement
* a peep hole optimizer that looks for code patterns and replaces
* them with faster equivalents.
*
* <p>This class internally uses the <a href="http://jakarta.apache.org/regexp/">
* Regexp</a> package to search for regular expressions.
*
* A typical application would look like this:
<pre>
InstructionFinder f   = new InstructionFinder(il);
String            pat = "IfInstruction ICONST_0 GOTO ICONST_1 NOP (IFEQ|IFNE)";

for(Iterator i = f.search(pat, constraint); i.hasNext(); ) {
InstructionHandle[] match = (InstructionHandle[])i.next();
...
il.delete(match[1], match[5]);
...
}
</pre>
* @author  <A HREF="http://www.berlin.de/~markus.dahm/">M. Dahm</A>
* @see Instruction
* @see InstructionList
*/
extern class InstructionFinder
{
	/**
	* @param il instruction list to search for given patterns
	*/
	@:overload @:public public function new(il : com.sun.org.apache.bcel.internal.generic.InstructionList) : Void;
	
	/**
	* Reread the instruction list, e.g., after you've altered the list upon a match.
	*/
	@:overload @:public @:final public function reread() : Void;
	
	/**
	* Search for the given pattern in the instruction list. You can search for any valid
	* opcode via its symbolic name, e.g. "istore". You can also use a super class or
	* an interface name to match a whole set of instructions, e.g. "BranchInstruction" or
	* "LoadInstruction". "istore" is also an alias for all "istore_x" instructions. Additional
	* aliases are "if" for "ifxx", "if_icmp" for "if_icmpxx", "if_acmp" for "if_acmpxx".
	*
	* Consecutive instruction names must be separated by white space which will be removed
	* during the compilation of the pattern.
	*
	* For the rest the usual pattern matching rules for regular expressions apply.<P>
	* Example pattern:
	* <pre>
	search("BranchInstruction NOP ((IfInstruction|GOTO)+ ISTORE Instruction)*");
	* </pre>
	*
	* <p>If you alter the instruction list upon a match such that other
	* matching areas are affected, you should call reread() to update
	* the finder and call search() again, because the matches are cached.
	*
	* @param pattern the instruction pattern to search for, where case is ignored
	* @param from where to start the search in the instruction list
	* @param constraint optional CodeConstraint to check the found code pattern for
	* user-defined constraints
	* @return iterator of matches where e.nextElement() returns an array of instruction handles
	* describing the matched area
	*/
	@:overload @:public @:final public function search(pattern : String, from : com.sun.org.apache.bcel.internal.generic.InstructionHandle, constraint : com.sun.org.apache.bcel.internal.util.InstructionFinder.InstructionFinder_CodeConstraint) : java.util.Iterator<Dynamic>;
	
	/**
	* Start search beginning from the start of the given instruction list.
	*
	* @param pattern the instruction pattern to search for, where case is ignored
	* @return iterator of matches where e.nextElement()
	* returns an array of instruction handles describing the matched
	* area
	*/
	@:overload @:public @:final public function search(pattern : String) : java.util.Iterator<Dynamic>;
	
	/**
	* Start search beginning from `from'.
	*
	* @param pattern the instruction pattern to search for, where case is ignored
	* @param from where to start the search in the instruction list
	* @return  iterator of matches where e.nextElement() returns an array of instruction handles
	* describing the matched area
	*/
	@:overload @:public @:final public function search(pattern : String, from : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : java.util.Iterator<Dynamic>;
	
	/**
	* Start search beginning from the start of the given instruction list.
	* Check found matches with the constraint object.
	*
	* @param pattern the instruction pattern to search for, case is ignored
	* @param constraint constraints to be checked on matching code
	* @return instruction handle or `null' if the match failed
	*/
	@:overload @:public @:final public function search(pattern : String, constraint : com.sun.org.apache.bcel.internal.util.InstructionFinder.InstructionFinder_CodeConstraint) : java.util.Iterator<Dynamic>;
	
	/**
	* @return the inquired instruction list
	*/
	@:overload @:public @:final public function getInstructionList() : com.sun.org.apache.bcel.internal.generic.InstructionList;
	
	
}
/**
* Code patterns found may be checked using an additional
* user-defined constraint object whether they really match the needed criterion.
* I.e., check constraints that can not expressed with regular expressions.
*
*/
@:native('com$sun$org$apache$bcel$internal$util$InstructionFinder$CodeConstraint') extern interface InstructionFinder_CodeConstraint
{
	/**
	* @param match array of instructions matching the requested pattern
	* @return true if the matched area is really useful
	*/
	@:overload @:public public function checkCode(match : java.NativeArray<com.sun.org.apache.bcel.internal.generic.InstructionHandle>) : Bool;
	
	
}
