package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 1999, 2012, Oracle and/or its affiliates. All rights reserved.
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
/**
* Utilities Class for Doclets.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Atul M Dambalkar
* @author Jamie Ho
*/
extern class Util
{
	/**
	* A mapping between characters and their
	* corresponding HTML escape character.
	*/
	public static var HTML_ESCAPE_CHARS(default, null) : java.NativeArray<java.NativeArray<String>>;
	
	/**
	* Name of the resource directory.
	*/
	public static var RESOURCESDIR(default, null) : String;
	
	/**
	* Resource bundle corresponding to the doclets.properties file.
	*/
	public static var RESOURCE_BUNDLE(default, null) : java.util.ResourceBundle;
	
	/**
	* Return array of class members whose documentation is to be generated.
	* If the member is deprecated do not include such a member in the
	* returned array.
	*
	* @param  members             Array of members to choose from.
	* @return ProgramElementDoc[] Array of eligible members for whom
	*                             documentation is getting generated.
	*/
	@:overload public static function excludeDeprecatedMembers(members : java.NativeArray<com.sun.javadoc.ProgramElementDoc>) : java.NativeArray<com.sun.javadoc.ProgramElementDoc>;
	
	/**
	* Return array of class members whose documentation is to be generated.
	* If the member is deprecated do not include such a member in the
	* returned array.
	*
	* @param  members    Array of members to choose from.
	* @return List       List of eligible members for whom
	*                    documentation is getting generated.
	*/
	@:overload public static function excludeDeprecatedMembersAsList(members : java.NativeArray<com.sun.javadoc.ProgramElementDoc>) : java.util.List<com.sun.javadoc.ProgramElementDoc>;
	
	/**
	* Return the list of ProgramElementDoc objects as Array.
	*/
	@:overload public static function toProgramElementDocArray(list : java.util.List<com.sun.javadoc.ProgramElementDoc>) : java.NativeArray<com.sun.javadoc.ProgramElementDoc>;
	
	/**
	* Return true if a non-public member found in the given array.
	*
	* @param  members Array of members to look into.
	* @return boolean True if non-public member found, false otherwise.
	*/
	@:overload public static function nonPublicMemberFound(members : java.NativeArray<com.sun.javadoc.ProgramElementDoc>) : Bool;
	
	/**
	* Search for the given method in the given class.
	*
	* @param  cd        Class to search into.
	* @param  method    Method to be searched.
	* @return MethodDoc Method found, null otherwise.
	*/
	@:overload public static function findMethod(cd : com.sun.javadoc.ClassDoc, method : com.sun.javadoc.MethodDoc) : com.sun.javadoc.MethodDoc;
	
	/**
	* @param member1 the first method to compare.
	* @param member2 the second method to compare.
	* @return true if member1 overrides/hides or is overriden/hidden by member2.
	*/
	@:overload public static function executableMembersEqual(member1 : com.sun.javadoc.ExecutableMemberDoc, member2 : com.sun.javadoc.ExecutableMemberDoc) : Bool;
	
	/**
	* According to
	* <cite>The Java&trade; Language Specification</cite>,
	* all the outer classes and static inner classes are core classes.
	*/
	@:overload public static function isCoreClass(cd : com.sun.javadoc.ClassDoc) : Bool;
	
	@:overload public static function matches(doc1 : com.sun.javadoc.ProgramElementDoc, doc2 : com.sun.javadoc.ProgramElementDoc) : Bool;
	
	/**
	* Copy source file to destination file.
	*
	* @throws SecurityException
	* @throws IOException
	*/
	@:overload public static function copyFile(destfile : java.io.File, srcfile : java.io.File) : Void;
	
	/**
	* Copy the given directory contents from the source package directory
	* to the generated documentation directory. For example for a package
	* java.lang this method find out the source location of the package using
	* {@link SourcePath} and if given directory is found in the source
	* directory structure, copy the entire directory, to the generated
	* documentation hierarchy.
	*
	* @param configuration The configuration of the current doclet.
	* @param path The relative path to the directory to be copied.
	* @param dir The original directory name to copy from.
	* @param overwrite Overwrite files if true.
	*/
	@:overload public static function copyDocFiles(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, path : String, dir : String, overwrite : Bool) : Void;
	
	/**
	* Copy a file in the resources directory to the destination
	* directory (if it is not there already).  If
	* <code>overwrite</code> is true and the destination file
	* already exists, overwrite it.
	*
	* @param configuration  Holds the destination directory and error message
	* @param resourcefile   The name of the resource file to copy
	* @param overwrite      A flag to indicate whether the file in the
	*                       destination directory will be overwritten if
	*                       it already exists.
	*/
	@:overload public static function copyResourceFile(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, resourcefile : String, overwrite : Bool) : Void;
	
	/**
	* Copy a file from a source directory to a destination directory
	* (if it is not there already). If <code>overwrite</code> is true and
	* the destination file already exists, overwrite it.
	*
	* @param configuration Holds the error message
	* @param file The name of the file to copy
	* @param source The source directory
	* @param destination The destination directory where the file needs to be copied
	* @param overwrite A flag to indicate whether the file in the
	*                  destination directory will be overwritten if
	*                  it already exists.
	* @param replaceNewLine true if the newline needs to be replaced with platform-
	*                  specific newline.
	*/
	@:overload public static function copyFile(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, file : String, source : String, destination : String, overwrite : Bool, replaceNewLine : Bool) : Void;
	
	/**
	* Given a PackageDoc, return the source path for that package.
	* @param configuration The Configuration for the current Doclet.
	* @param pkgDoc The package to seach the path for.
	* @return A string representing the path to the given package.
	*/
	@:overload public static function getPackageSourcePath(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, pkgDoc : com.sun.javadoc.PackageDoc) : String;
	
	/**
	* For the class return all implemented interfaces including the
	* superinterfaces of the implementing interfaces, also iterate over for
	* all the superclasses. For interface return all the extended interfaces
	* as well as superinterfaces for those extended interfaces.
	*
	* @param  type       type whose implemented or
	*                    super interfaces are sought.
	* @param  configuration the current configuration of the doclet.
	* @param  sort if true, return list of interfaces sorted alphabetically.
	* @return List of all the required interfaces.
	*/
	@:overload public static function getAllInterfaces(type : com.sun.javadoc.Type, configuration : com.sun.tools.doclets.internal.toolkit.Configuration, sort : Bool) : java.util.List<com.sun.javadoc.Type>;
	
	@:overload public static function getAllInterfaces(type : com.sun.javadoc.Type, configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : java.util.List<com.sun.javadoc.Type>;
	
	/**
	* Enclose in quotes, used for paths and filenames that contains spaces
	*/
	@:overload public static function quote(filepath : String) : String;
	
	/**
	* Given a package, return it's name.
	* @param packageDoc the package to check.
	* @return the name of the given package.
	*/
	@:overload public static function getPackageName(packageDoc : com.sun.javadoc.PackageDoc) : String;
	
	/**
	* Given a package, return it's file name without the extension.
	* @param packageDoc the package to check.
	* @return the file name of the given package.
	*/
	@:overload public static function getPackageFileHeadName(packageDoc : com.sun.javadoc.PackageDoc) : String;
	
	/**
	* Given a string, replace all occurraces of 'newStr' with 'oldStr'.
	* @param originalStr the string to modify.
	* @param oldStr the string to replace.
	* @param newStr the string to insert in place of the old string.
	*/
	@:overload public static function replaceText(originalStr : String, oldStr : String, newStr : String) : String;
	
	/**
	* Given a string, escape all special html characters and
	* return the result.
	*
	* @param s The string to check.
	* @return the original string with all of the HTML characters
	* escaped.
	*
	* @see #HTML_ESCAPE_CHARS
	*/
	@:overload public static function escapeHtmlChars(s : String) : String;
	
	/**
	* Given a string, strips all html characters and
	* return the result.
	*
	* @param rawString The string to check.
	* @return the original string with all of the HTML characters
	* stripped.
	*
	*/
	@:overload public static function stripHtml(rawString : String) : String;
	
	/**
	* Create the directory path for the file to be generated, construct
	* FileOutputStream and OutputStreamWriter depending upon docencoding.
	*
	* @param path The directory path to be created for this file.
	* @param filename File Name to which the PrintWriter will do the Output.
	* @param docencoding Encoding to be used for this file.
	* @exception IOException Exception raised by the FileWriter is passed on
	* to next level.
	* @exception UnsupportedEncodingException Exception raised by the
	* OutputStreamWriter is passed on to next level.
	* @return Writer Writer for the file getting generated.
	* @see java.io.FileOutputStream
	* @see java.io.OutputStreamWriter
	*/
	@:overload public static function genWriter(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, path : String, filename : String, docencoding : String) : java.io.Writer;
	
	/**
	* Given an annotation, return true if it should be documented and false
	* otherwise.
	*
	* @param annotationDoc the annotation to check.
	*
	* @return true return true if it should be documented and false otherwise.
	*/
	@:overload public static function isDocumentedAnnotation(annotationDoc : com.sun.javadoc.AnnotationTypeDoc) : Bool;
	
	/**
	* Given a string, return an array of tokens.  The separator can be escaped
	* with the '\' character.  The '\' character may also be escaped by the
	* '\' character.
	*
	* @param s         the string to tokenize.
	* @param separator the separator char.
	* @param maxTokens the maxmimum number of tokens returned.  If the
	*                  max is reached, the remaining part of s is appended
	*                  to the end of the last token.
	*
	* @return an array of tokens.
	*/
	@:overload public static function tokenize(s : String, separator : java.StdTypes.Char16, maxTokens : Int) : java.NativeArray<String>;
	
	/**
	* Return true if this class is linkable and false if we can't link to the
	* desired class.
	* <br>
	* <b>NOTE:</b>  You can only link to external classes if they are public or
	* protected.
	*
	* @param classDoc the class to check.
	* @param configuration the current configuration of the doclet.
	*
	* @return true if this class is linkable and false if we can't link to the
	* desired class.
	*/
	@:overload public static function isLinkable(classDoc : com.sun.javadoc.ClassDoc, configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Bool;
	
	/**
	* Given a class, return the closest visible super class.
	*
	* @param classDoc the class we are searching the parent for.
	* @param configuration the current configuration of the doclet.
	* @return the closest visible super class.  Return null if it cannot
	*         be found (i.e. classDoc is java.lang.Object).
	*/
	@:overload public static function getFirstVisibleSuperClass(classDoc : com.sun.javadoc.ClassDoc, configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : com.sun.javadoc.Type;
	
	/**
	* Given a class, return the closest visible super class.
	*
	* @param classDoc the class we are searching the parent for.
	* @param configuration the current configuration of the doclet.
	* @return the closest visible super class.  Return null if it cannot
	*         be found (i.e. classDoc is java.lang.Object).
	*/
	@:overload public static function getFirstVisibleSuperClassCD(classDoc : com.sun.javadoc.ClassDoc, configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : com.sun.javadoc.ClassDoc;
	
	/**
	* Given a ClassDoc, return the name of its type (Class, Interface, etc.).
	*
	* @param cd the ClassDoc to check.
	* @param lowerCaseOnly true if you want the name returned in lower case.
	*                      If false, the first letter of the name is capatilized.
	* @return
	*/
	@:overload public static function getTypeName(config : com.sun.tools.doclets.internal.toolkit.Configuration, cd : com.sun.javadoc.ClassDoc, lowerCaseOnly : Bool) : String;
	
	/**
	* Given a string, replace all tabs with the appropriate
	* number of spaces.
	* @param tabLength the length of each tab.
	* @param s the String to scan.
	*/
	@:overload public static function replaceTabs(tabLength : Int, s : java.lang.StringBuilder) : Void;
	
	/**
	* The documentation for values() and valueOf() in Enums are set by the
	* doclet.
	*/
	@:overload public static function setEnumDocumentation(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, classDoc : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	*  Return true if the given Doc is deprecated.
	*
	* @param doc the Doc to check.
	* @return true if the given Doc is deprecated.
	*/
	@:overload public static function isDeprecated(doc : com.sun.javadoc.Doc) : Bool;
	
	/**
	* A convenience method to get property name from the name of the
	* getter or setter method.
	* @param name name of the getter or setter method.
	* @return the name of the property of the given setter of getter.
	*/
	@:overload public static function propertyNameFromMethodName(name : String) : String;
	
	
}
/**
* We want the list of types in alphabetical order.  However, types are not
* comparable.  We need a comparator for now.
*/
@:native('com$sun$tools$doclets$internal$toolkit$util$Util$TypeComparator') @:internal extern class Util_TypeComparator implements java.util.Comparator<com.sun.javadoc.Type>
{
	@:overload public function compare(type1 : com.sun.javadoc.Type, type2 : com.sun.javadoc.Type) : Int;
	
	
}
