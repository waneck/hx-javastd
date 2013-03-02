package sun.tools.tree;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class UplevelReference implements sun.tools.java.Constants
{
	/**
	* constructor
	*/
	@:overload public function new(client : sun.tools.java.ClassDefinition, target : sun.tools.tree.LocalMember) : Void;
	
	/**
	* Insert self into a list of references.
	* Maintain "isEarlierThan" as an invariant of the list.
	* This is important (a) to maximize stability of signatures,
	* and (b) to allow uplevel "this" parameters to come at the
	* front of every argument list they appear in.
	*/
	@:overload public function insertInto(references : sun.tools.tree.UplevelReference) : sun.tools.tree.UplevelReference;
	
	/**
	* Tells if self precedes the other in the canonical ordering.
	*/
	@:overload @:final public function isEarlierThan(other : sun.tools.tree.UplevelReference) : Bool;
	
	/**
	* the target of this reference
	*/
	@:overload @:final public function getTarget() : sun.tools.tree.LocalMember;
	
	/**
	* the local argument for this reference
	*/
	@:overload @:final public function getLocalArgument() : sun.tools.tree.LocalMember;
	
	/**
	* the field allocated in the client for this reference
	*/
	@:overload @:final public function getLocalField() : sun.tools.java.MemberDefinition;
	
	/**
	* Get the local field, creating one if necessary.
	* The client class must not be frozen.
	*/
	@:overload @:final public function getLocalField(env : sun.tools.java.Environment) : sun.tools.java.MemberDefinition;
	
	/**
	* the client class
	*/
	@:overload @:final public function getClient() : sun.tools.java.ClassDefinition;
	
	/**
	* the next reference in the client's list
	*/
	@:overload @:final public function getNext() : sun.tools.tree.UplevelReference;
	
	/**
	* Tell if this uplevel reference is the up-level "this" pointer
	* of an inner class.  Such references are treated differently
	* than others, because they affect constructor calls across
	* compilation units.
	*/
	@:overload public function isClientOuterField() : Bool;
	
	/**
	* Tell if my local argument is directly available in this context.
	* If not, the uplevel reference will have to be via a class field.
	* <p>
	* This must be called in a context which is local
	* to the client of the uplevel reference.
	*/
	@:overload public function localArgumentAvailable(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Bool;
	
	/**
	* Process an uplevel reference.
	* The only decision to make at this point is whether
	* to build a "localField" instance variable, which
	* is done (lazily) when localArgumentAvailable() proves false.
	*/
	@:overload public function noteReference(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Void;
	
	/**
	* Assuming noteReference() is all taken care of,
	* build an uplevel reference.
	* <p>
	* This must be called in a context which is local
	* to the client of the uplevel reference.
	*/
	@:overload public function makeLocalReference(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	/**
	* As with makeLocalReference(), build a locally-usable reference.
	* Ignore the availability of local arguments; always use a class field.
	*/
	@:overload public function makeFieldReference(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : sun.tools.tree.Expression;
	
	/**
	* During the inline phase, call this on a list of references
	* for which the code phase will later emit arguments.
	* It will make sure that any "double-uplevel" values
	* needed by the callee are also present at the call site.
	* <p>
	* If any reference is a "ClientOuterField", it is skipped
	* by this method (and by willCodeArguments).  This is because
	*/
	@:overload public function willCodeArguments(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context) : Void;
	
	/**
	* Code is being generated for a call to a constructor of
	* the client class.  Push an argument for the constructor.
	*/
	@:overload public function codeArguments(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler, where : haxe.Int64, conField : sun.tools.java.MemberDefinition) : Void;
	
	/**
	* Code is being generated for a constructor of the client class.
	* Emit code which initializes the instance.
	*/
	@:overload public function codeInitialization(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, asm : sun.tools.asm.Assembler, where : haxe.Int64, conField : sun.tools.java.MemberDefinition) : Void;
	
	@:overload public function toString() : String;
	
	
}
