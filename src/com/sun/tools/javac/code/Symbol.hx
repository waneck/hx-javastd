package com.sun.tools.javac.code;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
/** Root class for Java symbols. It contains subclasses
*  for specific sorts of symbols, such as variables, methods and operators,
*  types, packages. Each subclass is represented as a static inner class
*  inside Symbol.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Symbol implements javax.lang.model.element.Element
{
	/** The kind of this symbol.
	*  @see Kinds
	*/
	@:public public var kind : Int;
	
	/** The flags of this symbol.
	*/
	@:public public var flags_field : haxe.Int64;
	
	/** An accessor method for the flags of this symbol.
	*  Flags of class symbols should be accessed through the accessor
	*  method to make sure that the class symbol is loaded.
	*/
	@:overload @:public public function flags() : haxe.Int64;
	
	/** The attributes of this symbol.
	*/
	@:public public var attributes_field : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Attribute.Attribute_Compound>;
	
	/** An accessor method for the attributes of this symbol.
	*  Attributes of class symbols should be accessed through the accessor
	*  method to make sure that the class symbol is loaded.
	*/
	@:overload @:public public function getAnnotationMirrors() : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Attribute.Attribute_Compound>;
	
	/** Fetch a particular annotation from a symbol. */
	@:overload @:public public function attribute(anno : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Attribute.Attribute_Compound;
	
	/** The name of this symbol in Utf8 representation.
	*/
	@:public public var name : com.sun.tools.javac.util.Name;
	
	/** The type of this symbol.
	*/
	@:public public var type : com.sun.tools.javac.code.Type;
	
	/** The owner of this symbol.
	*/
	@:public public var owner : com.sun.tools.javac.code.Symbol;
	
	/** The completer of this symbol.
	*/
	@:public public var completer : com.sun.tools.javac.code.Symbol.Symbol_Completer;
	
	/** A cache for the type erasure of this symbol.
	*/
	@:public public var erasure_field : com.sun.tools.javac.code.Type;
	
	/** Construct a symbol with given kind, flags, name, type and owner.
	*/
	@:overload @:public public function new(kind : Int, flags : haxe.Int64, name : com.sun.tools.javac.util.Name, type : com.sun.tools.javac.code.Type, owner : com.sun.tools.javac.code.Symbol) : Void;
	
	/** Clone this symbol with new owner.
	*  Legal only for fields and methods.
	*/
	@:overload @:public public function clone(newOwner : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public public function accept<R, P>(v : com.sun.tools.javac.code.Symbol.Symbol_Visitor<R, P>, p : P) : R;
	
	/** The Java source which this symbol represents.
	*  A description of this symbol; overrides Object.
	*/
	@:overload @:public public function toString() : String;
	
	/** A Java source description of the location of this symbol; used for
	*  error reporting.
	*
	* @return null if the symbol is a package or a toplevel class defined in
	* the default package; otherwise, the owner symbol is returned
	*/
	@:overload @:public public function location() : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public public function location(site : com.sun.tools.javac.code.Type, types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Symbol;
	
	/** The symbol's erased type.
	*/
	@:overload @:public public function erasure(types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Type;
	
	/** The external type of a symbol. This is the symbol's erased type
	*  except for constructors of inner classes which get the enclosing
	*  instance class added as first argument.
	*/
	@:overload @:public public function externalType(types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Type;
	
	@:overload @:public public function isStatic() : Bool;
	
	@:overload @:public public function isInterface() : Bool;
	
	/** Recognize if this symbol was marked @PolymorphicSignature in the source. */
	@:overload @:public public function isPolymorphicSignatureGeneric() : Bool;
	
	/** Recognize if this symbol was split from a @PolymorphicSignature symbol in the source. */
	@:overload @:public public function isPolymorphicSignatureInstance() : Bool;
	
	/** Is this symbol declared (directly or indirectly) local
	*  to a method or variable initializer?
	*  Also includes fields of inner classes which are in
	*  turn local to a method or variable initializer.
	*/
	@:overload @:public public function isLocal() : Bool;
	
	/** Has this symbol an empty name? This includes anonymous
	*  inner classses.
	*/
	@:overload @:public public function isAnonymous() : Bool;
	
	/** Is this symbol a constructor?
	*/
	@:overload @:public public function isConstructor() : Bool;
	
	/** The fully qualified name of this symbol.
	*  This is the same as the symbol's name except for class symbols,
	*  which are handled separately.
	*/
	@:overload @:public public function getQualifiedName() : com.sun.tools.javac.util.Name;
	
	/** The fully qualified name of this symbol after converting to flat
	*  representation. This is the same as the symbol's name except for
	*  class symbols, which are handled separately.
	*/
	@:overload @:public public function flatName() : com.sun.tools.javac.util.Name;
	
	/** If this is a class or package, its members, otherwise null.
	*/
	@:overload @:public public function members() : com.sun.tools.javac.code.Scope;
	
	/** A class is an inner class if it it has an enclosing instance class.
	*/
	@:overload @:public public function isInner() : Bool;
	
	/** An inner class has an outer instance if it is not an interface
	*  it has an enclosing instance class which might be referenced from the class.
	*  Nested classes can see instance members of their enclosing class.
	*  Their constructors carry an additional this$n parameter, inserted
	*  implicitly by the compiler.
	*
	*  @see #isInner
	*/
	@:overload @:public public function hasOuterInstance() : Bool;
	
	/** The closest enclosing class of this symbol's declaration.
	*/
	@:overload @:public public function enclClass() : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol;
	
	/** The outermost class which indirectly owns this symbol.
	*/
	@:overload @:public public function outermostClass() : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol;
	
	/** The package which indirectly owns this symbol.
	*/
	@:overload @:public public function packge() : com.sun.tools.javac.code.Symbol.Symbol_PackageSymbol;
	
	/** Is this symbol a subclass of `base'? Only defined for ClassSymbols.
	*/
	@:overload @:public public function isSubClass(base : com.sun.tools.javac.code.Symbol, types : com.sun.tools.javac.code.Types) : Bool;
	
	/** Fully check membership: hierarchy, protection, and hiding.
	*  Does not exclude methods not inherited due to overriding.
	*/
	@:overload @:public public function isMemberOf(clazz : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, types : com.sun.tools.javac.code.Types) : Bool;
	
	/** Is this symbol the same as or enclosed by the given class? */
	@:overload @:public public function isEnclosedBy(clazz : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol) : Bool;
	
	/** Is this symbol inherited into a given class?
	*  PRE: If symbol's owner is a interface,
	*       it is already assumed that the interface is a superinterface
	*       of given class.
	*  @param clazz  The class for which we want to establish membership.
	*                This must be a subclass of the member's owner.
	*/
	@:overload @:public public function isInheritedIn(clazz : com.sun.tools.javac.code.Symbol, types : com.sun.tools.javac.code.Types) : Bool;
	
	/** The (variable or method) symbol seen as a member of given
	*  class type`site' (this might change the symbol's type).
	*  This is used exclusively for producing diagnostics.
	*/
	@:overload @:public public function asMemberOf(site : com.sun.tools.javac.code.Type, types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Symbol;
	
	/** Does this method symbol override `other' symbol, when both are seen as
	*  members of class `origin'?  It is assumed that _other is a member
	*  of origin.
	*
	*  It is assumed that both symbols have the same name.  The static
	*  modifier is ignored for this test.
	*
	*  See JLS 8.4.6.1 (without transitivity) and 8.4.6.4
	*/
	@:overload @:public public function overrides(_other : com.sun.tools.javac.code.Symbol, origin : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, types : com.sun.tools.javac.code.Types, checkResult : Bool) : Bool;
	
	/** Complete the elaboration of this symbol's definition.
	*/
	@:overload @:public public function complete() : Void;
	
	/** True if the symbol represents an entity that exists.
	*/
	@:overload @:public public function exists() : Bool;
	
	@:overload @:public public function asType() : com.sun.tools.javac.code.Type;
	
	@:overload @:public public function getEnclosingElement() : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public public function getKind() : javax.lang.model.element.ElementKind;
	
	@:overload @:public public function getModifiers() : java.util.Set<javax.lang.model.element.Modifier>;
	
	@:overload @:public public function getSimpleName() : com.sun.tools.javac.util.Name;
	
	/**
	* @deprecated this method should never be used by javac internally.
	*/
	@:overload @:public public function getAnnotation<A : java.lang.annotation.Annotation>(annoType : Class<A>) : A;
	
	@:overload @:public public function getEnclosedElements() : java.util.List<com.sun.tools.javac.code.Symbol>;
	
	@:overload @:public public function getTypeParameters() : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol>;
	
	/**
	* Applies a visitor to this element.
	*
	* @param <R> the return type of the visitor's methods
	* @param <P> the type of the additional parameter to the visitor's methods
	* @param v   the visitor operating on this element
	* @param p   additional parameter to the visitor
	* @return a visitor-specified result
	*/
	@:overload @:public public function accept<R, P>(v : javax.lang.model.element.ElementVisitor<R, P>, p : P) : R;
	
	
}
@:native('com$sun$tools$javac$code$Symbol$DelegatedSymbol') extern class Symbol_DelegatedSymbol extends com.sun.tools.javac.code.Symbol
{
	@:protected private var other : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public public function new(other : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function location() : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public override public function location(site : com.sun.tools.javac.code.Type, types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public override public function erasure(types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Type;
	
	@:overload @:public override public function externalType(types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Type;
	
	@:overload @:public override public function isLocal() : Bool;
	
	@:overload @:public override public function isConstructor() : Bool;
	
	@:overload @:public override public function getQualifiedName() : com.sun.tools.javac.util.Name;
	
	@:overload @:public override public function flatName() : com.sun.tools.javac.util.Name;
	
	@:overload @:public override public function members() : com.sun.tools.javac.code.Scope;
	
	@:overload @:public override public function isInner() : Bool;
	
	@:overload @:public override public function hasOuterInstance() : Bool;
	
	@:overload @:public override public function enclClass() : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol;
	
	@:overload @:public override public function outermostClass() : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol;
	
	@:overload @:public override public function packge() : com.sun.tools.javac.code.Symbol.Symbol_PackageSymbol;
	
	@:overload @:public override public function isSubClass(base : com.sun.tools.javac.code.Symbol, types : com.sun.tools.javac.code.Types) : Bool;
	
	@:overload @:public override public function isMemberOf(clazz : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, types : com.sun.tools.javac.code.Types) : Bool;
	
	@:overload @:public override public function isEnclosedBy(clazz : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol) : Bool;
	
	@:overload @:public override public function isInheritedIn(clazz : com.sun.tools.javac.code.Symbol, types : com.sun.tools.javac.code.Types) : Bool;
	
	@:overload @:public override public function asMemberOf(site : com.sun.tools.javac.code.Type, types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public override public function complete() : Void;
	
	@:overload @:public override public function accept<R, P>(v : javax.lang.model.element.ElementVisitor<R, P>, p : P) : R;
	
	@:overload @:public override public function accept<R, P>(v : com.sun.tools.javac.code.Symbol.Symbol_Visitor<R, P>, p : P) : R;
	
	
}
/** A class for type symbols. Type variables are represented by instances
*  of this class, classes and packages by instances of subclasses.
*/
@:native('com$sun$tools$javac$code$Symbol$TypeSymbol') extern class Symbol_TypeSymbol extends com.sun.tools.javac.code.Symbol implements javax.lang.model.element.TypeParameterElement
{
	@:overload @:public public function new(flags : haxe.Int64, name : com.sun.tools.javac.util.Name, type : com.sun.tools.javac.code.Type, owner : com.sun.tools.javac.code.Symbol) : Void;
	
	/** form a fully qualified name from a name and an owner
	*/
	@:overload @:static @:public public static function formFullName(name : com.sun.tools.javac.util.Name, owner : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.util.Name;
	
	/** form a fully qualified name from a name and an owner, after
	*  converting to flat representation
	*/
	@:overload @:static @:public public static function formFlatName(name : com.sun.tools.javac.util.Name, owner : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.util.Name;
	
	/**
	* A total ordering between type symbols that refines the
	* class inheritance graph.
	*
	* Typevariables always precede other kinds of symbols.
	*/
	@:overload @:public @:final public function precedes(that : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, types : com.sun.tools.javac.code.Types) : Bool;
	
	@:overload @:public override public function getKind() : javax.lang.model.element.ElementKind;
	
	@:overload @:public override public function getEnclosedElements() : java.util.List<com.sun.tools.javac.code.Symbol>;
	
	@:overload @:public public function getGenericElement() : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public override public function accept<R, P>(v : javax.lang.model.element.ElementVisitor<R, P>, p : P) : R;
	
	@:overload @:public override public function accept<R, P>(v : com.sun.tools.javac.code.Symbol.Symbol_Visitor<R, P>, p : P) : R;
	
	@:overload @:public public function getBounds() : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	
}
/** A class for package symbols
*/
@:native('com$sun$tools$javac$code$Symbol$PackageSymbol') extern class Symbol_PackageSymbol extends com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol implements javax.lang.model.element.PackageElement
{
	@:public public var members_field : com.sun.tools.javac.code.Scope;
	
	@:public public var fullname : com.sun.tools.javac.util.Name;
	
	@:public public var package_info : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol;
	
	@:overload @:public public function new(name : com.sun.tools.javac.util.Name, type : com.sun.tools.javac.code.Type, owner : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public public function new(name : com.sun.tools.javac.util.Name, owner : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function getQualifiedName() : com.sun.tools.javac.util.Name;
	
	@:overload @:public public function isUnnamed() : Bool;
	
	@:overload @:public override public function members() : com.sun.tools.javac.code.Scope;
	
	@:overload @:public override public function flags() : haxe.Int64;
	
	@:overload @:public override public function getAnnotationMirrors() : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Attribute.Attribute_Compound>;
	
	/** A package "exists" if a type or package that exists has
	*  been seen within it.
	*/
	@:overload @:public override public function exists() : Bool;
	
	@:overload @:public override public function getKind() : javax.lang.model.element.ElementKind;
	
	@:overload @:public override public function getEnclosingElement() : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public override public function accept<R, P>(v : javax.lang.model.element.ElementVisitor<R, P>, p : P) : R;
	
	@:overload @:public override public function accept<R, P>(v : com.sun.tools.javac.code.Symbol.Symbol_Visitor<R, P>, p : P) : R;
	
	
}
/** A class for class symbols
*/
@:native('com$sun$tools$javac$code$Symbol$ClassSymbol') extern class Symbol_ClassSymbol extends com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol implements javax.lang.model.element.TypeElement
{
	/** a scope for all class members; variables, methods and inner classes
	*  type parameters are not part of this scope
	*/
	@:public public var members_field : com.sun.tools.javac.code.Scope;
	
	/** the fully qualified name of the class, i.e. pck.outer.inner.
	*  null for anonymous classes
	*/
	@:public public var fullname : com.sun.tools.javac.util.Name;
	
	/** the fully qualified name of the class after converting to flat
	*  representation, i.e. pck.outer$inner,
	*  set externally for local and anonymous classes
	*/
	@:public public var flatname : com.sun.tools.javac.util.Name;
	
	/** the sourcefile where the class came from
	*/
	@:public public var sourcefile : javax.tools.JavaFileObject;
	
	/** the classfile from where to load this class
	*  this will have extension .class or .java
	*/
	@:public public var classfile : javax.tools.JavaFileObject;
	
	/** the list of translated local classes (used for generating
	* InnerClasses attribute)
	*/
	@:public public var trans_local : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol>;
	
	/** the constant pool of the class
	*/
	@:public public var pool : com.sun.tools.javac.jvm.Pool;
	
	@:overload @:public public function new(flags : haxe.Int64, name : com.sun.tools.javac.util.Name, type : com.sun.tools.javac.code.Type, owner : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public public function new(flags : haxe.Int64, name : com.sun.tools.javac.util.Name, owner : com.sun.tools.javac.code.Symbol) : Void;
	
	/** The Java source which this symbol represents.
	*/
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function flags() : haxe.Int64;
	
	@:overload @:public override public function members() : com.sun.tools.javac.code.Scope;
	
	@:overload @:public override public function getAnnotationMirrors() : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Attribute.Attribute_Compound>;
	
	@:overload @:public override public function erasure(types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Type;
	
	@:overload @:public public function className() : String;
	
	@:overload @:public override public function getQualifiedName() : com.sun.tools.javac.util.Name;
	
	@:overload @:public override public function flatName() : com.sun.tools.javac.util.Name;
	
	@:overload @:public override public function isSubClass(base : com.sun.tools.javac.code.Symbol, types : com.sun.tools.javac.code.Types) : Bool;
	
	/** Complete the elaboration of this symbol's definition.
	*/
	@:overload @:public override public function complete() : Void;
	
	@:overload @:public public function getInterfaces() : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	@:overload @:public public function getSuperclass() : com.sun.tools.javac.code.Type;
	
	@:overload @:public override public function getKind() : javax.lang.model.element.ElementKind;
	
	@:overload @:public public function getNestingKind() : javax.lang.model.element.NestingKind;
	
	/**
	* @deprecated this method should never be used by javac internally.
	*/
	@:overload @:public override public function getAnnotation<A : java.lang.annotation.Annotation>(annoType : Class<A>) : A;
	
	@:overload @:public override public function accept<R, P>(v : javax.lang.model.element.ElementVisitor<R, P>, p : P) : R;
	
	@:overload @:public override public function accept<R, P>(v : com.sun.tools.javac.code.Symbol.Symbol_Visitor<R, P>, p : P) : R;
	
	
}
/** A class for variable symbols
*/
@:native('com$sun$tools$javac$code$Symbol$VarSymbol') extern class Symbol_VarSymbol extends com.sun.tools.javac.code.Symbol implements javax.lang.model.element.VariableElement
{
	/** The variable's declaration position.
	*/
	@:public public var pos : Int;
	
	/** The variable's address. Used for different purposes during
	*  flow analysis, translation and code generation.
	*  Flow analysis:
	*    If this is a blank final or local variable, its sequence number.
	*  Translation:
	*    If this is a private field, its access number.
	*  Code generation:
	*    If this is a local variable, its logical slot number.
	*/
	@:public public var adr : Int;
	
	/** Construct a variable symbol, given its flags, name, type and owner.
	*/
	@:overload @:public public function new(flags : haxe.Int64, name : com.sun.tools.javac.util.Name, type : com.sun.tools.javac.code.Type, owner : com.sun.tools.javac.code.Symbol) : Void;
	
	/** Clone this symbol with new owner.
	*/
	@:overload @:public override public function clone(newOwner : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Symbol.Symbol_VarSymbol;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function asMemberOf(site : com.sun.tools.javac.code.Type, types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public override public function getKind() : javax.lang.model.element.ElementKind;
	
	@:overload @:public override public function accept<R, P>(v : javax.lang.model.element.ElementVisitor<R, P>, p : P) : R;
	
	@:overload @:public public function getConstantValue() : Dynamic;
	
	@:overload @:public public function setLazyConstValue(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, attr : com.sun.tools.javac.comp.Attr, initializer : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public public function isExceptionParameter() : Bool;
	
	@:overload @:public public function isResourceVariable() : Bool;
	
	@:overload @:public public function getConstValue() : Dynamic;
	
	@:overload @:public public function setData(data : Dynamic) : Void;
	
	@:overload @:public override public function accept<R, P>(v : com.sun.tools.javac.code.Symbol.Symbol_Visitor<R, P>, p : P) : R;
	
	
}
/** A class for method symbols.
*/
@:native('com$sun$tools$javac$code$Symbol$MethodSymbol') extern class Symbol_MethodSymbol extends com.sun.tools.javac.code.Symbol implements javax.lang.model.element.ExecutableElement
{
	/** The code of the method. */
	@:public public var code : com.sun.tools.javac.jvm.Code;
	
	/** The names of the parameters */
	@:public public var savedParameterNames : com.sun.tools.javac.util.List<com.sun.tools.javac.util.Name>;
	
	/** For an attribute field accessor, its default value if any.
	*  The value is null if none appeared in the method
	*  declaration.
	*/
	@:public public var defaultValue : com.sun.tools.javac.code.Attribute;
	
	/** Construct a method symbol, given its flags, name, type and owner.
	*/
	@:overload @:public public function new(flags : haxe.Int64, name : com.sun.tools.javac.util.Name, type : com.sun.tools.javac.code.Type, owner : com.sun.tools.javac.code.Symbol) : Void;
	
	/** Clone this symbol with new owner.
	*/
	@:overload @:public override public function clone(newOwner : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol;
	
	/** The Java source which this symbol represents.
	*/
	@:overload @:public override public function toString() : String;
	
	/** find a symbol that this (proxy method) symbol implements.
	*  @param    c       The class whose members are searched for
	*                    implementations
	*/
	@:overload @:public public function implemented(c : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public public function implementedIn(c : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Symbol;
	
	/** Will the erasure of this method be considered by the VM to
	*  override the erasure of the other when seen from class `origin'?
	*/
	@:overload @:public public function binaryOverrides(_other : com.sun.tools.javac.code.Symbol, origin : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, types : com.sun.tools.javac.code.Types) : Bool;
	
	/** The implementation of this (abstract) symbol in class origin,
	*  from the VM's point of view, null if method does not have an
	*  implementation in class.
	*  @param origin   The class of which the implementation is a member.
	*/
	@:overload @:public public function binaryImplementation(origin : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol, types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol;
	
	/** Does this symbol override `other' symbol, when both are seen as
	*  members of class `origin'?  It is assumed that _other is a member
	*  of origin.
	*
	*  It is assumed that both symbols have the same name.  The static
	*  modifier is ignored for this test.
	*
	*  See JLS 8.4.6.1 (without transitivity) and 8.4.6.4
	*/
	@:overload @:public override public function overrides(_other : com.sun.tools.javac.code.Symbol, origin : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, types : com.sun.tools.javac.code.Types, checkResult : Bool) : Bool;
	
	/** The implementation of this (abstract) symbol in class origin;
	*  null if none exists. Synthetic methods are not considered
	*  as possible implementations.
	*/
	@:overload @:public public function implementation(origin : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, types : com.sun.tools.javac.code.Types, checkResult : Bool) : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol;
	
	@:overload @:public public function implementation(origin : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, types : com.sun.tools.javac.code.Types, checkResult : Bool, implFilter : com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>) : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol;
	
	@:overload @:public public function params() : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Symbol.Symbol_VarSymbol>;
	
	@:overload @:public override public function asMemberOf(site : com.sun.tools.javac.code.Type, types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public override public function getKind() : javax.lang.model.element.ElementKind;
	
	@:overload @:public public function isStaticOrInstanceInit() : Bool;
	
	@:overload @:public public function getDefaultValue() : com.sun.tools.javac.code.Attribute;
	
	@:overload @:public public function getParameters() : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Symbol.Symbol_VarSymbol>;
	
	@:overload @:public public function isVarArgs() : Bool;
	
	@:overload @:public override public function accept<R, P>(v : javax.lang.model.element.ElementVisitor<R, P>, p : P) : R;
	
	@:overload @:public override public function accept<R, P>(v : com.sun.tools.javac.code.Symbol.Symbol_Visitor<R, P>, p : P) : R;
	
	@:overload @:public public function getReturnType() : com.sun.tools.javac.code.Type;
	
	@:overload @:public public function getThrownTypes() : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	
}
/** A class for predefined operators.
*/
@:native('com$sun$tools$javac$code$Symbol$OperatorSymbol') extern class Symbol_OperatorSymbol extends com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol
{
	@:public public var opcode : Int;
	
	@:overload @:public public function new(name : com.sun.tools.javac.util.Name, type : com.sun.tools.javac.code.Type, opcode : Int, owner : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public override public function accept<R, P>(v : com.sun.tools.javac.code.Symbol.Symbol_Visitor<R, P>, p : P) : R;
	
	
}
/** Symbol completer interface.
*/
@:native('com$sun$tools$javac$code$Symbol$Completer') extern interface Symbol_Completer
{
	@:overload public function complete(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	
}
@:native('com$sun$tools$javac$code$Symbol$CompletionFailure') extern class Symbol_CompletionFailure extends java.lang.RuntimeException
{
	@:public public var sym : com.sun.tools.javac.code.Symbol;
	
	/** A diagnostic object describing the failure
	*/
	@:public public var diag : com.sun.tools.javac.util.JCDiagnostic;
	
	/** A localized string describing the failure.
	* @deprecated Use {@code getDetail()} or {@code getMessage()}
	*/
	@:public public var errmsg : String;
	
	@:overload @:public public function new(sym : com.sun.tools.javac.code.Symbol, errmsg : String) : Void;
	
	@:overload @:public public function new(sym : com.sun.tools.javac.code.Symbol, diag : com.sun.tools.javac.util.JCDiagnostic) : Void;
	
	@:overload @:public public function getDiagnostic() : com.sun.tools.javac.util.JCDiagnostic;
	
	@:overload @:public override public function getMessage() : String;
	
	@:overload @:public public function getDetailValue() : Dynamic;
	
	@:overload @:public override public function initCause(cause : java.lang.Throwable) : com.sun.tools.javac.code.Symbol.Symbol_CompletionFailure;
	
	
}
/**
* A visitor for symbols.  A visitor is used to implement operations
* (or relations) on symbols.  Most common operations on types are
* binary relations and this interface is designed for binary
* relations, that is, operations on the form
* Symbol&nbsp;&times;&nbsp;P&nbsp;&rarr;&nbsp;R.
* <!-- In plain text: Type x P -> R -->
*
* @param <R> the return type of the operation implemented by this
* visitor; use Void if no return type is needed.
* @param <P> the type of the second argument (the first being the
* symbol itself) of the operation implemented by this visitor; use
* Void if a second argument is not needed.
*/
@:native('com$sun$tools$javac$code$Symbol$Visitor') extern interface Symbol_Visitor<R, P>
{
	@:overload @:public public function visitClassSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol, arg : P) : R;
	
	@:overload @:public public function visitMethodSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol, arg : P) : R;
	
	@:overload @:public public function visitPackageSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_PackageSymbol, arg : P) : R;
	
	@:overload @:public public function visitOperatorSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_OperatorSymbol, arg : P) : R;
	
	@:overload @:public public function visitVarSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_VarSymbol, arg : P) : R;
	
	@:overload @:public public function visitTypeSymbol(s : com.sun.tools.javac.code.Symbol.Symbol_TypeSymbol, arg : P) : R;
	
	@:overload @:public public function visitSymbol(s : com.sun.tools.javac.code.Symbol, arg : P) : R;
	
	
}
