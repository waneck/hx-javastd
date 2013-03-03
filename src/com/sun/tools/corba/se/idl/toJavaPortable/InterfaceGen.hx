package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* COMPONENT_NAME: idl.toJava
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// NOTES:
//// -The ctor should really throw an exception, but then it must have a
////  throws clause. How much of a ripple effect is this?
//// -F46082.51<daz> Remove -stateful feature.
//// -D60929   <klr> Update for RTF2.4 changes
//// -D61056   <klr> Use Util.helperName
//// -D62014   <klr> Move const definitions from signature to operations interf.
//// -D62310   <klr> Fix declaration of interfaces extending abstract intf.
//// -D62023   <klr> Move const definitions back from operations to signature.
extern class InterfaceGen implements com.sun.tools.corba.se.idl.InterfaceGen implements com.sun.tools.corba.se.idl.toJavaPortable.JavaGenerator
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload @:public public function new() : Void;
	
	/**
	* Generate the interface and all the files associated with it.
	* Provides general algorithm for binding generation:
	* 1.) Initialize symbol table and symbol table entry members, common to all generators.
	* 2.) Generate the skeleton if required by calling generateSkeletn ()
	* 3.) Generate the holder by calling generateHolder ()
	* 4.) Generate the helper by calling generateHelper ()
	* 5.) Generate the stub if required by calling generateStub ()
	* 6.) Generate the interface by calling generateInterface ()
	**/
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, i : com.sun.tools.corba.se.idl.InterfaceEntry, stream : java.io.PrintWriter) : Void;
	
	/**
	* Initialize members unique to this generator.
	**/
	@:overload @:protected private function init() : Void;
	
	/**
	* Generate a Skeleton when the user does not want just the client-side code.
	**/
	@:overload @:protected private function generateSkeleton() : Void;
	
	/**
	* Generate a Stub when the user does not want just the server-side code.
	**/
	@:overload @:protected private function generateStub() : Void;
	
	/**
	* Generate a Helper when the user does not want just the server-side code.
	**/
	@:overload @:protected private function generateHelper() : Void;
	
	/**
	* Generate a Holder when the user does not want just the server-side code.
	**/
	@:overload @:protected private function generateHolder() : Void;
	
	/**
	* Generate the interface. Provides general algorithm for binding generation:
	* 1.) Initialize members unique to this generator. - init ()
	* 2.) Open print stream - openStream ()
	* 3.) Write class heading (package, prologue, class statement, open curly - writeHeading ()
	* 4.) Write class body (member data and methods) - write*Body ()
	* 5.) Write class closing (close curly) - writeClosing ()
	* 6.) Close the print stream - closeStream ()
	*
	* For CORBA 2.3, interfaces are mapped to Operations and Signature
	* interfaces. The Operations interface contains the method definitions.
	* The Signature interface extends the Operations interface and adds
	* CORBA::Object. <klr>
	**/
	@:overload @:protected private function generateInterface() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function openStream() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeHeading() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeSignatureHeading() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeOperationsHeading() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeOperationsBody() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeSignatureBody() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeClosing() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function closeStream() : Void;
	
	/*
	public int helperType (int index, String indent, TCOffsets tcoffsets, String name, SymtabEntry entry, PrintWriter stream)
	{
	InterfaceEntry i = (InterfaceEntry)entry;
	if (i.state () != null && i.state ().size () > 0)
	index = structHelperType (index, indent, tcoffsets, name, entry, stream);
	else
	{
	tcoffsets.set (entry);
	if (entry.fullName ().equals ("org/omg/CORBA/Object"))
	stream.println (indent + name
	+ " = org.omg.CORBA.ORB.init ().get_primitive_tc (org.omg.CORBA.TCKind.tk_objref);");
	else
	stream.println (indent + name
	// <54697>
	//+ " = org.omg.CORBA.ORB.init ().create_interface_tc (_id, "
	+ " = org.omg.CORBA.ORB.init ().create_interface_tc (" + Util.helperName (i, true) + ".id (), " // <d61056>
	+ '\"' + Util.stripLeadingUnderscores (entry.name ()) + "\");");
	}
	return index;
	} // helperType
	*/
	@:overload @:public public function helperType(index : Int, indent : String, tcoffsets : com.sun.tools.corba.se.idl.toJavaPortable.TCOffsets, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:overload @:public public function type(index : Int, indent : String, tcoffsets : com.sun.tools.corba.se.idl.toJavaPortable.TCOffsets, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	/*
	public void helperRead (String entryName, SymtabEntry entry, PrintWriter stream)
	{
	InterfaceEntry i = (InterfaceEntry)entry;
	if (i.state () != null)
	structHelperRead (entryName, i, stream);
	else
	{
	if (i.isAbstract ())
	stream.println ("    return narrow (((org.omg.CORBA_2_3.portable.InputStream)istream).read_abstract_interface (_" + i.name () + "Stub.class));"); // <d60929>
	else
	stream.println ("    return narrow (istream.read_Object (_" + i.name () + "Stub.class));");
	}
	} // helperRead

	*/
	@:overload @:public public function helperRead(entryName : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	/*
	public void helperWrite (SymtabEntry entry, PrintWriter stream)
	{
	InterfaceEntry i = (InterfaceEntry)entry;
	if (i.state () != null)
	structHelperWrite (entry, stream);
	else
	write (0, "    ", "value", entry, stream);
	} // helperWrite
	*/
	@:overload @:public public function helperWrite(entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Void;
	
	/*
	public int read (int index, String indent, String name, SymtabEntry entry, PrintWriter stream)
	{
	InterfaceEntry i = (InterfaceEntry)entry;
	if (i.state () != null)
	index = structRead (index, indent, name, i, stream);
	else
	{
	if (entry.fullName ().equals ("org/omg/CORBA/Object"))
	stream.println (indent + name + " = istream.read_Object (_" + i.name () + "Stub.class);");
	else
	stream.println (indent + name + " = " + Util.helperName (entry, false) + ".narrow (istream.read_Object (_" + i.name () + "Stub.class));"); // <d61056>
	}
	return index;
	} // read
	*/
	@:overload @:public public function read(index : Int, indent : String, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	/*
	public int write (int index, String indent, String name, SymtabEntry entry, PrintWriter stream)
	{
	InterfaceEntry i = (InterfaceEntry)entry;
	if (i.state () != null)
	index = structWrite (index, indent, name, entry, stream);
	else
	{
	if (i.isAbstract ())
	stream.println (indent + "((org.omg.CORBA_2_3.portable.OutputStream)ostream).write_abstract_interface ((java.lang.Object) " + name + ");"); // <d60929>
	else
	stream.println (indent + "ostream.write_Object ((org.omg.CORBA.Object) " + name + ");");
	}
	return index;
	} // write
	*/
	@:overload @:public public function write(index : Int, indent : String, name : String, entry : com.sun.tools.corba.se.idl.SymtabEntry, stream : java.io.PrintWriter) : Int;
	
	@:protected private var emit : Int;
	
	@:protected private var factories : com.sun.tools.corba.se.idl.toJavaPortable.Factories;
	
	@:protected private var symbolTable : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var i : com.sun.tools.corba.se.idl.InterfaceEntry;
	
	@:protected private var stream : java.io.PrintWriter;
	
	@:protected @:static @:final private static var SIGNATURE(default, null) : Int;
	
	@:protected @:static @:final private static var OPERATIONS(default, null) : Int;
	
	@:protected private var intfType : Int;
	
	
}
