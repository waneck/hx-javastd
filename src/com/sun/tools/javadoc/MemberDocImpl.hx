package com.sun.tools.javadoc;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class MemberDocImpl extends com.sun.tools.javadoc.ProgramElementDocImpl implements com.sun.javadoc.MemberDoc
{
	/**
	* constructor.
	*/
	@:overload public function new(env : com.sun.tools.javadoc.DocEnv, sym : com.sun.tools.javac.code.Symbol, doc : String, tree : com.sun.tools.javac.tree.JCTree, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Returns true if this field was synthesized by the compiler.
	*/
	@:overload @:abstract public function isSynthetic() : Bool;
	
	/**
	* Return tags of the specified {@linkplain Tag#kind() kind} in
	* this Doc item.
	*
	* For example, if 'tagname' has value "@serial", all tags in
	* this Doc item of kind "@serial" will be returned.
	*
	* @param tagname name of the tag kind to search for.
	* @return an array of Tag containing all tags whose 'kind()'
	* matches 'tagname'.
	*/
	@:overload @:public override public function tags(tagname : String) : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* Is this Doc item an exception class?
	*
	* @return true if it represents an exception
	*/
	@:overload @:public override public function isException() : Bool;
	
	/**
	* Return the first sentence of the comment as an array of tags.
	* Includes inline tags
	* (i.e. {&#64link <i>reference</i>} tags)  but not
	* block tags.
	* Each section of plain text is represented as a {@link Tag}
	* of {@linkplain Tag#kind() kind} "Text".
	* Inline tags are represented as a {@link SeeTag} of kind "@see"
	* and name "@link".
	* <p>
	* If the locale is English language, the first sentence is
	* determined by the rules described in the Java Language
	* Specification (first version): &quot;This sentence ends
	* at the first period that is followed by a blank, tab, or
	* line terminator or at the first tagline.&quot;, in
	* addition a line will be terminated by block
	* HTML tags: &lt;p&gt;  &lt;/p&gt;  &lt;h1&gt;
	* &lt;h2&gt;  &lt;h3&gt; &lt;h4&gt;  &lt;h5&gt;  &lt;h6&gt;
	* &lt;hr&gt;  &lt;pre&gt;  or &lt;/pre&gt;.
	* If the locale is not English, the sentence end will be
	* determined by
	* {@link BreakIterator#getSentenceInstance(Locale)}.

	* @return an array of {@link Tag}s representing the
	* first sentence of the comment
	*/
	@:overload @:public override public function firstSentenceTags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* Is this Doc item a field (but not an enum constant)?
	*
	* @return true if it represents a field
	*/
	@:overload @:public override public function isField() : Bool;
	
	/**
	* Is this Doc item a constructor?
	*
	* @return true if it represents a constructor
	*/
	@:overload @:public override public function isConstructor() : Bool;
	
	/**
	* Return true if this program element is protected.
	*/
	@:overload override public function isProtected() : Bool;
	
	/**
	* Return true if this program element is final.
	*/
	@:overload override public function isFinal() : Bool;
	
	/**
	* Is this Doc item a
	* <a href="{@docRoot}/com/sun/javadoc/package-summary.html#class">class</a>
	* (and not an interface or annotation type)?
	* This includes ordinary classes, enums, errors and exceptions.
	*
	* @return true if it represents a class
	*/
	@:overload @:public override public function isClass() : Bool;
	
	/**
	* Compares this doc object with the specified object for order.  Returns a
	* negative integer, zero, or a positive integer as this doc object is less
	* than, equal to, or greater than the given object.
	* <p>
	* This method satisfies the {@link java.lang.Comparable} interface.
	*
	* @param   obj  the <code>Object</code> to be compared.
	* @return  a negative integer, zero, or a positive integer as this Object
	*      is less than, equal to, or greater than the given Object.
	* @exception ClassCastException the specified Object's type prevents it
	*        from being compared to this Object.
	*/
	@:overload @:public override public function compareTo(obj : Dynamic) : Int;
	
	/**
	* Is this Doc item an annotation type element?
	*
	* @return true if it represents an annotation type element
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function isAnnotationTypeElement() : Bool;
	
	/**
	* Returns the non-qualified name of this Doc item.
	*
	* @return  the name
	*/
	@:overload @:public override public function name() : String;
	
	/**
	* Is this Doc item an enum constant?
	*
	* @return true if it represents an enum constant
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function isEnumConstant() : Bool;
	
	/**
	* Is this Doc item an enum type?
	*
	* @return true if it represents an enum type
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function isEnum() : Bool;
	
	/**
	* Return the full unprocessed text of the comment.  Tags
	* are included as text.  Used mainly for store and retrieve
	* operations like internalization.
	*/
	@:overload @:public override public function getRawCommentText() : String;
	
	/**
	* Return the see also tags in this Doc item.
	*
	* @return an array of SeeTag containing all @see tags.
	*/
	@:overload @:public override public function seeTags() : java.NativeArray<com.sun.javadoc.SeeTag>;
	
	/**
	* Is this Doc item an
	* <a href="{@docRoot}/com/sun/javadoc/package-summary.html#class">ordinary
	* class</a>?
	* (i.e. not an interface, annotation type, enum, exception, or error)?
	*
	* @return true if it represents an ordinary class
	*/
	@:overload @:public override public function isOrdinaryClass() : Bool;
	
	/**
	* Get the package that this program element is contained in.
	*
	* @return a PackageDoc for this element containing package.
	* If in the unnamed package, this PackageDoc will have the
	* name "".
	*/
	@:overload override public function containingPackage() : com.sun.javadoc.PackageDoc;
	
	/**
	* Get the containing class or interface of this program element.
	*
	* @return a ClassDoc for this element's containing class or interface.
	* If this is a top-level class or interface, return null.
	*/
	@:overload override public function containingClass() : com.sun.javadoc.ClassDoc;
	
	/**
	* Return true if this program element is static.
	*/
	@:overload override public function isStatic() : Bool;
	
	/**
	* Set the full unprocessed text of the comment.  Tags
	* are included as text.  Used mainly for store and retrieve
	* operations like internalization.
	*/
	@:overload @:public override public function setRawCommentText(rawDocumentation : String) : Void;
	
	/**
	* Return the text of the comment for this doc item.
	* Tags have been removed.
	*/
	@:overload @:public override public function commentText() : String;
	
	/**
	* Get the fully qualified name of this program element.
	* For example, for the class <code>java.util.Hashtable</code>,
	* return "java.util.Hashtable".
	* <p>
	* For the method <code>bar()</code> in class <code>Foo</code>
	* in the unnamed package, return "Foo.bar".
	*
	* @return the qualified name of the program element as a String.
	*/
	@:overload @:public override public function qualifiedName() : String;
	
	/**
	* Is this Doc item an error class?
	*
	* @return true if it represents a error
	*/
	@:overload @:public override public function isError() : Bool;
	
	/**
	* Return true if this program element is private.
	*/
	@:overload override public function isPrivate() : Bool;
	
	/**
	* Is this Doc item an annotation type?
	*
	* @return true if it represents an annotation type
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function isAnnotationType() : Bool;
	
	/**
	* Get the modifier specifier integer.
	*
	* @see java.lang.reflect.Modifier
	*/
	@:overload override public function modifierSpecifier() : Int;
	
	/**
	* Return true if this program element is public.
	*/
	@:overload override public function isPublic() : Bool;
	
	/**
	* Return comment as an array of tags. Includes inline tags
	* (i.e. {&#64link <i>reference</i>} tags)  but not
	* block tags.
	* Each section of plain text is represented as a {@link Tag}
	* of {@linkplain Tag#kind() kind} "Text".
	* Inline tags are represented as a {@link SeeTag} of kind "@see"
	* and name "@link".
	*
	* @return an array of {@link Tag}s representing the comment
	*/
	@:overload @:public override public function inlineTags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* Get the annotations of this program element.
	* Return an empty array if there are none.
	*
	* @return the annotations of this program element.
	* @since 1.5
	*/
	@:require(java5) @:overload override public function annotations() : java.NativeArray<com.sun.javadoc.AnnotationDesc>;
	
	/**
	* Is this Doc item a method (but not a constructor or annotation
	* type element)?
	*
	* @return true if it represents a method
	*/
	@:overload @:public override public function isMethod() : Bool;
	
	/**
	* Is this Doc item an interface (but not an annotation type)?
	*
	* @return true if it represents an interface
	*/
	@:overload @:public override public function isInterface() : Bool;
	
	/**
	* Return true if this program element is package private.
	*/
	@:overload override public function isPackagePrivate() : Bool;
	
	/**
	* Return all tags in this Doc item.
	*
	* @return an array of {@link Tag} objects containing all tags on
	*         this Doc item.
	*/
	@:overload @:public override public function tags() : java.NativeArray<com.sun.javadoc.Tag>;
	
	/**
	* Return the source position of the first line of the
	* corresponding declaration, or null if
	* no position is available.  A default constructor returns
	* null because it has no location in the source file.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public override public function position() : com.sun.javadoc.SourcePosition;
	
	/**
	* Return true if this Doc item is
	* <a href="{@docRoot}/com/sun/javadoc/package-summary.html#included">included</a>
	* in the result set.
	*/
	@:overload @:public override public function isIncluded() : Bool;
	
	/**
	* Get modifiers string.
	* For example, for:
	* <pre>
	*   public abstract int foo() { ... }
	* </pre>
	* return "public abstract".
	* Annotations are not included.
	*/
	@:overload override public function modifiers() : String;
	
	
}
