package com.sun.org.apache.xerces.internal.impl.dtd;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 2000-2002 The Apache Software Foundation.  All rights
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
* 4. The names "Xerces" and "Apache Software Foundation" must
*    not be used to endorse or promote products derived from this
*    software without prior written permission. For written
*    permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    nor may "Apache" appear in their name, without prior written
*    permission of the Apache Software Foundation.
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
* individuals on behalf of the Apache Software Foundation and was
* originally based on software copyright (c) 1999, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class XMLDTDDescription extends com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl implements com.sun.org.apache.xerces.internal.xni.grammars.XMLDTDDescription
{
	/**
	* All information specific to DTD grammars.
	*
	* @xerces.internal
	*
	* @author Neil Graham, IBM
	* @version $Id: XMLDTDDescription.java,v 1.4 2010/08/11 07:18:38 joehw Exp $
	*/
	@:protected private var fRootName : String;
	
	@:protected private var fPossibleRoots : java.util.ArrayList<Dynamic>;
	
	@:overload @:public public function new(id : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, rootName : String) : Void;
	
	@:overload @:public public function new(publicId : String, literalId : String, baseId : String, expandedId : String, rootName : String) : Void;
	
	@:overload @:public public function new(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	@:overload @:public public function getGrammarType() : String;
	
	/**
	* @return the root name of this DTD or null if root name is unknown
	*/
	@:overload @:public public function getRootName() : String;
	
	/** Set the root name **/
	@:overload @:public public function setRootName(rootName : String) : Void;
	
	/** Set possible roots **/
	@:overload @:public public function setPossibleRoots(possibleRoots : java.util.ArrayList<Dynamic>) : Void;
	
	/** Set possible roots **/
	@:overload @:public public function setPossibleRoots(possibleRoots : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Compares this grammar with the given grammar. Currently, we compare
	* as follows:
	* - if grammar type not equal return false immediately
	* - try and find a common root name:
	*    - if both have roots, use them
	*    - else if one has a root, examine other's possible root's for a match;
	*    - else try all combinations
	*  - test fExpandedSystemId and fPublicId as above
	*
	* @param desc The description of the grammar to be compared with
	* @return     True if they are equal, else false
	*/
	@:overload @:public public function equals(desc : Dynamic) : Bool;
	
	/**
	* Returns the hash code of this grammar
	* Because our .equals method is so complex, we just return a very
	* simple hash that might avoid calls to the equals method a bit...
	* @return The hash code
	*/
	@:overload @:public override public function hashCode() : Int;
	
	
}
