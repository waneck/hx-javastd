package sun.tools.java;
/*
* Copyright (c) 1994, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ClassDefinition implements sun.tools.java.Constants
{
	/**
	* This class is a Java class definition
	*
	* WARNING: The contents of this source file are not part of any
	* supported API.  Code that depends on them does so at its own risk:
	* they are subject to change or removal without notice.
	*/
	private var source : Dynamic;
	
	private var where : haxe.Int64;
	
	private var modifiers : Int;
	
	private var localName : sun.tools.java.Identifier;
	
	private var declaration : sun.tools.java.ClassDeclaration;
	
	private var superClassId : sun.tools.java.IdentifierToken;
	
	private var interfaceIds : java.NativeArray<sun.tools.java.IdentifierToken>;
	
	private var superClass : sun.tools.java.ClassDeclaration;
	
	private var interfaces : java.NativeArray<sun.tools.java.ClassDeclaration>;
	
	private var outerClass : ClassDefinition;
	
	private var outerMember : sun.tools.java.MemberDefinition;
	
	private var innerClassMember : sun.tools.java.MemberDefinition;
	
	private var firstMember : sun.tools.java.MemberDefinition;
	
	private var lastMember : sun.tools.java.MemberDefinition;
	
	private var resolved : Bool;
	
	private var documentation : String;
	
	private var error : Bool;
	
	private var nestError : Bool;
	
	private var references : sun.tools.tree.UplevelReference;
	
	private var referencesFrozen : Bool;
	
	private var classContext : sun.tools.tree.Context;
	
	@:overload public function getClassContext() : sun.tools.tree.Context;
	
	/**
	* Constructor
	*/
	@:overload private function new(source : Dynamic, where : haxe.Int64, declaration : sun.tools.java.ClassDeclaration, modifiers : Int, superClass : sun.tools.java.IdentifierToken, interfaces : java.NativeArray<sun.tools.java.IdentifierToken>) : Void;
	
	/**
	* Get the source of the class
	*/
	@:overload @:final public function getSource() : Dynamic;
	
	/**
	* Check if there were any errors in this class.
	*/
	@:overload @:final public function getError() : Bool;
	
	/**
	* Mark this class to be erroneous.
	*/
	@:overload @:final public function setError() : Void;
	
	/**
	* Check if there were any errors in our class nest.
	*/
	@:overload @:final public function getNestError() : Bool;
	
	/**
	* Mark this class, and all siblings in its class nest, to be
	* erroneous.
	*/
	@:overload @:final public function setNestError() : Void;
	
	/**
	* Get the position in the input
	*/
	@:overload @:final public function getWhere() : haxe.Int64;
	
	/**
	* Get the class declaration
	*/
	@:overload @:final public function getClassDeclaration() : sun.tools.java.ClassDeclaration;
	
	/**
	* Get the class' modifiers
	*/
	@:overload @:final public function getModifiers() : Int;
	
	@:overload @:final public function subModifiers(mod : Int) : Void;
	
	@:overload @:final public function addModifiers(mod : Int) : Void;
	
	private var supersCheckStarted : Bool;
	
	/**
	* Get the class' super class
	*/
	@:overload @:final public function getSuperClass() : sun.tools.java.ClassDeclaration;
	
	/**
	* Get the super class, and resolve names now if necessary.
	*
	* It is only possible to resolve names at this point if we are
	* a source class.  The provision of this method at this level
	* in the class hierarchy is dubious, but see 'getInnerClass' below.
	* All other calls to 'getSuperClass(env)' appear in 'SourceClass'.
	* NOTE: An older definition of this method has been moved to
	* 'SourceClass', where it overrides this one.
	*
	* @see #resolveTypeStructure
	*/
	@:overload public function getSuperClass(env : sun.tools.java.Environment) : sun.tools.java.ClassDeclaration;
	
	/**
	* Get the class' interfaces
	*/
	@:overload @:final public function getInterfaces() : java.NativeArray<sun.tools.java.ClassDeclaration>;
	
	/**
	* Get the class' enclosing class (or null if not inner)
	*/
	@:overload @:final public function getOuterClass() : ClassDefinition;
	
	/**
	* Set the class' enclosing class.  Must be done at most once.
	*/
	@:overload @:final private function setOuterClass(outerClass : ClassDefinition) : Void;
	
	/**
	* Set the class' enclosing current instance pointer.
	* Must be done at most once.
	*/
	@:overload @:final private function setOuterMember(outerMember : sun.tools.java.MemberDefinition) : Void;
	
	/**
	* Tell if the class is inner.
	* This predicate also returns true for top-level nested types.
	* To test for a true inner class as seen by the programmer,
	* use <tt>!isTopLevel()</tt>.
	*/
	@:overload @:final public function isInnerClass() : Bool;
	
	/**
	* Tell if the class is a member of another class.
	* This is false for package members and for block-local classes.
	*/
	@:overload @:final public function isMember() : Bool;
	
	/**
	* Tell if the class is "top-level", which is either a package member,
	* or a static member of another top-level class.
	*/
	@:overload @:final public function isTopLevel() : Bool;
	
	/**
	* Tell if the class is local or inside a local class,
	* which means it cannot be mentioned outside of its file.
	*/
	@:overload @:final public function isInsideLocal() : Bool;
	
	/**
	* Tell if the class is local or or anonymous class, or inside
	* such a class, which means it cannot be mentioned outside of
	* its file.
	*/
	@:overload @:final public function isInsideLocalOrAnonymous() : Bool;
	
	/**
	* Return a simple identifier for this class (idNull if anonymous).
	*/
	@:overload public function getLocalName() : sun.tools.java.Identifier;
	
	/**
	* Set the local name of a class.  Must be a local class.
	*/
	@:overload public function setLocalName(name : sun.tools.java.Identifier) : Void;
	
	/**
	* If inner, get the field for this class in the enclosing class
	*/
	@:overload @:final public function getInnerClassMember() : sun.tools.java.MemberDefinition;
	
	/**
	* If inner, return an innermost uplevel self pointer, if any exists.
	* Otherwise, return null.
	*/
	@:overload @:final public function findOuterMember() : sun.tools.java.MemberDefinition;
	
	/**
	* See if this is a (nested) static class.
	*/
	@:overload @:final public function isStatic() : Bool;
	
	/**
	* Get the class' top-level enclosing class
	*/
	@:overload @:final public function getTopClass() : ClassDefinition;
	
	/**
	* Get the class' first field or first match
	*/
	@:overload @:final public function getFirstMember() : sun.tools.java.MemberDefinition;
	
	@:overload @:final public function getFirstMatch(name : sun.tools.java.Identifier) : sun.tools.java.MemberDefinition;
	
	/**
	* Get the class' name
	*/
	@:overload @:final public function getName() : sun.tools.java.Identifier;
	
	/**
	* Get the class' type
	*/
	@:overload @:final public function getType() : sun.tools.java.Type;
	
	/**
	* Get the class' documentation
	*/
	@:overload public function getDocumentation() : String;
	
	/**
	* Return true if the given documentation string contains a deprecation
	* paragraph.  This is true if the string contains the tag @deprecated
	* is the first word in a line.
	*/
	@:overload public static function containsDeprecated(documentation : String) : Bool;
	
	@:overload @:final public function inSamePackage(c : sun.tools.java.ClassDeclaration) : Bool;
	
	@:overload @:final public function inSamePackage(c : ClassDefinition) : Bool;
	
	@:overload @:final public function inSamePackage(packageName : sun.tools.java.Identifier) : Bool;
	
	/**
	* Checks
	*/
	@:overload @:final public function isInterface() : Bool;
	
	@:overload @:final public function isClass() : Bool;
	
	@:overload @:final public function isPublic() : Bool;
	
	@:overload @:final public function isPrivate() : Bool;
	
	@:overload @:final public function isProtected() : Bool;
	
	@:overload @:final public function isPackagePrivate() : Bool;
	
	@:overload @:final public function isFinal() : Bool;
	
	@:overload @:final public function isAbstract() : Bool;
	
	@:overload @:final public function isSynthetic() : Bool;
	
	@:overload @:final public function isDeprecated() : Bool;
	
	@:overload @:final public function isAnonymous() : Bool;
	
	@:overload @:final public function isLocal() : Bool;
	
	@:overload @:final public function hasConstructor() : Bool;
	
	/**
	* Check to see if a class must be abstract.  This method replaces
	* isAbstract(env)
	*/
	@:overload @:final public function mustBeAbstract(env : sun.tools.java.Environment) : Bool;
	
	/**
	* Check if this is a super class of another class
	*/
	@:overload public function superClassOf(env : sun.tools.java.Environment, otherClass : sun.tools.java.ClassDeclaration) : Bool;
	
	/**
	* Check if this is an enclosing class of another class
	*/
	@:overload public function enclosingClassOf(otherClass : ClassDefinition) : Bool;
	
	/**
	* Check if this is a sub class of another class
	*/
	@:overload public function subClassOf(env : sun.tools.java.Environment, otherClass : sun.tools.java.ClassDeclaration) : Bool;
	
	/**
	* Check if this class is implemented by another class
	*/
	@:overload public function implementedBy(env : sun.tools.java.Environment, c : sun.tools.java.ClassDeclaration) : Bool;
	
	/**
	* Check to see if a class which implements interface `this' could
	* possibly implement the interface `intDef'.  Note that the only
	* way that this can fail is if `this' and `intDef' have methods
	* which are of the same signature and different return types.  This
	* method is used by Environment.explicitCast() to determine if a
	* cast between two interfaces is legal.
	*
	* This method should only be called on a class after it has been
	* basicCheck()'ed.
	*/
	@:overload public function couldImplement(intDef : ClassDefinition) : Bool;
	
	/**
	* Check if another class can be accessed from the 'extends' or 'implements'
	* clause of this class.
	*/
	@:overload public function extendsCanAccess(env : sun.tools.java.Environment, c : sun.tools.java.ClassDeclaration) : Bool;
	
	/**
	* Check if another class can be accessed from within the body of this class.
	*/
	@:overload public function canAccess(env : sun.tools.java.Environment, c : sun.tools.java.ClassDeclaration) : Bool;
	
	/**
	* Check if a field can be accessed from a class
	*/
	@:overload public function canAccess(env : sun.tools.java.Environment, f : sun.tools.java.MemberDefinition) : Bool;
	
	/**
	* Check if a class is entitled to inline access to a class from
	* another class.
	*/
	@:overload public function permitInlinedAccess(env : sun.tools.java.Environment, c : sun.tools.java.ClassDeclaration) : Bool;
	
	/**
	* Check if a class is entitled to inline access to a method from
	* another class.
	*/
	@:overload public function permitInlinedAccess(env : sun.tools.java.Environment, f : sun.tools.java.MemberDefinition) : Bool;
	
	/**
	* We know the the field is marked protected (and not public) and that
	* the field is visible (as per canAccess).  Can we access the field as
	* <accessor>.<field>, where <accessor> has the type <accessorType>?
	*
	* Protected fields can only be accessed when the accessorType is a
	* subclass of the current class
	*/
	@:overload public function protectedAccess(env : sun.tools.java.Environment, f : sun.tools.java.MemberDefinition, accessorType : sun.tools.java.Type) : Bool;
	
	/**
	* Find or create an access method for a private member,
	* or return null if this is not possible.
	*/
	@:overload public function getAccessMember(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, field : sun.tools.java.MemberDefinition, isSuper : Bool) : sun.tools.java.MemberDefinition;
	
	/**
	* Find or create an update method for a private member,
	* or return null if this is not possible.
	*/
	@:overload public function getUpdateMember(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, field : sun.tools.java.MemberDefinition, isSuper : Bool) : sun.tools.java.MemberDefinition;
	
	/**
	* Get a field from this class.  Report ambiguous fields.
	* If no accessible field is found, this method may return an
	* inaccessible field to allow a useful error message.
	*
	* getVariable now takes the source class `source' as an argument.
	* This allows getVariable to check whether a field is inaccessible
	* before it signals that a field is ambiguous.  The compiler used to
	* signal an ambiguity even when one of the fields involved was not
	* accessible.  (bug 4053724)
	*/
	@:overload public function getVariable(env : sun.tools.java.Environment, nm : sun.tools.java.Identifier, source : ClassDefinition) : sun.tools.java.MemberDefinition;
	
	/**
	* Tells whether to report a deprecation error for this class.
	*/
	@:overload public function reportDeprecated(env : sun.tools.java.Environment) : Bool;
	
	/**
	* Note that this class is being used somehow by <tt>ref</tt>.
	* Report deprecation errors, etc.
	*/
	@:overload public function noteUsedBy(ref : ClassDefinition, where : haxe.Int64, env : sun.tools.java.Environment) : Void;
	
	/**
	* Get an inner class.
	* Look in supers but not outers.
	* (This is used directly to resolve expressions like "site.K", and
	* inside a loop to resolve lone names like "K" or the "K" in "K.L".)
	*
	* Called from 'Context' and 'FieldExpression' as well as this class.
	*
	* @see FieldExpression.checkCommon
	* @see resolveName
	*/
	@:overload public function getInnerClass(env : sun.tools.java.Environment, nm : sun.tools.java.Identifier) : sun.tools.java.MemberDefinition;
	
	/**
	* Lookup a method.  This code implements the method lookup
	* mechanism specified in JLS 15.11.2.
	*
	* This mechanism cannot be used to lookup synthetic methods.
	*/
	@:overload public function matchMethod(env : sun.tools.java.Environment, accessor : ClassDefinition, methodName : sun.tools.java.Identifier, argumentTypes : java.NativeArray<sun.tools.java.Type>) : sun.tools.java.MemberDefinition;
	
	/**
	* Lookup a method.  This code implements the method lookup
	* mechanism specified in JLS 15.11.2.
	*
	* This mechanism cannot be used to lookup synthetic methods.
	*/
	@:overload public function matchMethod(env : sun.tools.java.Environment, accessor : ClassDefinition, methodName : sun.tools.java.Identifier) : sun.tools.java.MemberDefinition;
	
	/**
	* A version of matchMethod to be used only for constructors
	* when we cannot pass in a sourceClass argument.  We just assert
	* our package name.
	*
	* This is used only for anonymous classes, where we have to look up
	* a (potentially) protected constructor with no valid sourceClass
	* parameter available.
	*/
	@:overload public function matchAnonConstructor(env : sun.tools.java.Environment, accessPackage : sun.tools.java.Identifier, argumentTypes : java.NativeArray<sun.tools.java.Type>) : sun.tools.java.MemberDefinition;
	
	/**
	* Find a method, ie: exact match in this class or any of the super
	* classes.
	*
	* Only called by javadoc.  For now I am holding off rewriting this
	* code to rely on collectInheritedMethods(), as that code has
	* not gotten along with javadoc in the past.
	*/
	@:overload public function findMethod(env : sun.tools.java.Environment, nm : sun.tools.java.Identifier, t : sun.tools.java.Type) : sun.tools.java.MemberDefinition;
	
	@:overload private function basicCheck(env : sun.tools.java.Environment) : Void;
	
	/**
	* Check this class.
	*/
	@:overload public function check(env : sun.tools.java.Environment) : Void;
	
	@:overload public function checkLocalClass(env : sun.tools.java.Environment, ctx : sun.tools.tree.Context, vset : sun.tools.tree.Vset, sup : ClassDefinition, args : java.NativeArray<sun.tools.tree.Expression>, argTypes : java.NativeArray<sun.tools.java.Type>) : sun.tools.tree.Vset;
	
	/**
	* This method returns an Iterator of all abstract methods
	* in our superclasses which we are unable to implement.
	*/
	@:overload private function getPermanentlyAbstractMethods() : java.util.Iterator<Dynamic>;
	
	/**
	* A flag used by turnOffInheritanceChecks() to indicate if
	* inheritance checks are on or off.
	*/
	private static var doInheritanceChecks : Bool;
	
	/**
	* This is a workaround to allow javadoc to turn off certain
	* inheritance/override checks which interfere with javadoc
	* badly.  In the future it might be good to eliminate the
	* shared sources of javadoc and javac to avoid the need for this
	* sort of workaround.
	*/
	@:overload public static function turnOffInheritanceChecks() : Void;
	
	/**
	* <p>Collect all methods defined in this class or inherited from
	* any of our superclasses or interfaces.  Look for any
	* incompatible definitions.
	*
	* <p>This function is also responsible for collecting the
	* <em>Miranda</em> methods for a class.  For a definition of
	* Miranda methods, see the comment in addMirandaMethods()
	* below.
	*/
	@:overload private function collectInheritedMethods(env : sun.tools.java.Environment) : Void;
	
	/**
	* Get an Iterator of all methods which could be accessed in an
	* instance of this class.
	*/
	@:overload public function getMethods(env : sun.tools.java.Environment) : java.util.Iterator<Dynamic>;
	
	/**
	* Get an Iterator of all methods which could be accessed in an
	* instance of this class.  Throw a compiler error if we haven't
	* generated this information yet.
	*/
	@:overload public function getMethods() : java.util.Iterator<Dynamic>;
	
	/**
	* Add a list of methods to this class as miranda methods.  This
	* gets overridden with a meaningful implementation in SourceClass.
	* BinaryClass should not need to do anything -- it should already
	* have its miranda methods and, if it doesn't, then that doesn't
	* affect our compilation.
	*/
	@:overload private function addMirandaMethods(env : sun.tools.java.Environment, mirandas : java.util.Iterator<Dynamic>) : Void;
	
	@:overload public function inlineLocalClass(env : sun.tools.java.Environment) : Void;
	
	/**
	* We create a stub for this.  Source classes do more work.
	* Some calls from 'SourceClass.checkSupers' execute this method.
	* @see sun.tools.javac.SourceClass#resolveTypeStructure
	*/
	@:overload public function resolveTypeStructure(env : sun.tools.java.Environment) : Void;
	
	/**
	* Look up an inner class name, from somewhere inside this class.
	* Since supers and outers are in scope, search them too.
	* <p>
	* If no inner class is found, env.resolveName() is then called,
	* to interpret the ambient package and import directives.
	* <p>
	* This routine operates on a "best-efforts" basis.  If
	* at some point a class is not found, the partially-resolved
	* identifier is returned.  Eventually, someone else has to
	* try to get the ClassDefinition and diagnose the ClassNotFound.
	* <p>
	* resolveName() looks at surrounding scopes, and hence
	* pulling in both inherited and uplevel types.  By contrast,
	* resolveInnerClass() is intended only for interpreting
	* explicitly qualified names, and so look only at inherited
	* types.  Also, resolveName() looks for package prefixes,
	* which appear similar to "very uplevel" outer classes.
	* <p>
	* A similar (but more complex) name-lookup process happens
	* when field and identifier expressions denoting qualified names
	* are type-checked.  The added complexity comes from the fact
	* that variables may occur in such names, and take precedence
	* over class and package names.
	* <p>
	* In the expression type-checker, resolveInnerClass() is paralleled
	* by code in FieldExpression.checkAmbigName(), which also calls
	* ClassDefinition.getInnerClass() to interpret names of the form
	* "OuterClass.Inner" (and also outerObject.Inner).  The checking
	* of an identifier expression that fails to be a variable is referred
	* directly to resolveName().
	*/
	@:overload public function resolveName(env : sun.tools.java.Environment, name : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* Interpret a qualified class name, which may have further subcomponents..
	* Follow inheritance links, as in:
	*  class C { class N { } }  class D extends C { }  ... new D.N() ...
	* Ignore outer scopes and packages.
	* @see resolveName
	*/
	@:overload public function resolveInnerClass(env : sun.tools.java.Environment, nm : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* While resolving import directives, the question has arisen:
	* does a given inner class exist?  If the top-level class exists,
	* we ask it about an inner class via this method.
	* This method looks only at the literal name of the class,
	* and does not attempt to follow inheritance links.
	* This is necessary, since at the time imports are being
	* processed, inheritance links have not been resolved yet.
	* (Thus, an import directive must always spell a class
	* name exactly.)
	*/
	@:overload public function innerClassExists(nm : sun.tools.java.Identifier) : Bool;
	
	/**
	* Find any method with a given name.
	*/
	@:overload public function findAnyMethod(env : sun.tools.java.Environment, nm : sun.tools.java.Identifier) : sun.tools.java.MemberDefinition;
	
	/**
	* Given the fact that this class has no method "nm" matching "argTypes",
	* find out if the mismatch can be blamed on a particular actual argument
	* which disagrees with all of the overloadings.
	* If so, return the code (i<<2)+(castOK<<1)+ambig, where
	* "i" is the number of the offending argument, and
	* "castOK" is 1 if a cast could fix the problem.
	* The target type for the argument is returned in margTypeResult[0].
	* If not all methods agree on this type, "ambig" is 1.
	* If there is more than one method, the choice of target type is
	* arbitrary.<p>
	* Return -1 if every argument is acceptable to at least one method.
	* Return -2 if there are no methods of the required arity.
	* The value "start" gives the index of the first argument to begin
	* checking.
	*/
	@:overload public function diagnoseMismatch(env : sun.tools.java.Environment, nm : sun.tools.java.Identifier, argTypes : java.NativeArray<sun.tools.java.Type>, start : Int, margTypeResult : java.NativeArray<sun.tools.java.Type>) : Int;
	
	/**
	* Add a field (no checks)
	*/
	@:overload public function addMember(field : sun.tools.java.MemberDefinition) : Void;
	
	/**
	* Add a field (subclasses make checks)
	*/
	@:overload public function addMember(env : sun.tools.java.Environment, field : sun.tools.java.MemberDefinition) : Void;
	
	/**
	* Find or create an uplevel reference for the given target.
	*/
	@:overload public function getReference(target : sun.tools.tree.LocalMember) : sun.tools.tree.UplevelReference;
	
	@:overload private function addReference(target : sun.tools.tree.LocalMember) : sun.tools.tree.UplevelReference;
	
	/**
	* Return the list of all uplevel references.
	*/
	@:overload public function getReferences() : sun.tools.tree.UplevelReference;
	
	/**
	* Return the same value as getReferences.
	* Also, mark the set of references frozen.
	* After that, it is an error to add new references.
	*/
	@:overload public function getReferencesFrozen() : sun.tools.tree.UplevelReference;
	
	/**
	* assertion check
	*/
	@:overload @:final public function referencesMustNotBeFrozen() : Void;
	
	/**
	* Get helper method for class literal lookup.
	*/
	@:overload public function getClassLiteralLookup(fwhere : haxe.Int64) : sun.tools.java.MemberDefinition;
	
	/**
	* Add a dependency
	*/
	@:overload public function addDependency(c : sun.tools.java.ClassDeclaration) : Void;
	
	/**
	* Maintain a hash table of local and anonymous classes
	* whose internal names are prefixed by the current class.
	* The key is the simple internal name, less the prefix.
	*/
	@:overload public function getLocalClass(name : String) : ClassDefinition;
	
	@:overload public function addLocalClass(c : ClassDefinition, name : String) : Void;
	
	/**
	* Print for debugging
	*/
	@:overload public function print(out : java.io.PrintStream) : Void;
	
	/**
	* Convert to String
	*/
	@:overload public function toString() : String;
	
	/**
	* After the class has been written to disk, try to free up
	* some storage.
	*/
	@:overload public function cleanup(env : sun.tools.java.Environment) : Void;
	
	
}
