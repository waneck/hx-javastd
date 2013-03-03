package com.sun.org.apache.xalan.internal.xslt;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: EnvironmentCheck.java,v 1.2.4.1 2005/09/09 07:13:59 pvedula Exp $
*/
extern class EnvironmentCheck
{
	/**
	* Command line runnability: checks for [-out outFilename] arg.
	* <p>Command line entrypoint; Sets output and calls
	* {@link #checkEnvironment(PrintWriter)}.</p>
	* @param args command line args
	*/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	/**
	* Programmatic entrypoint: Report on basic Java environment
	* and CLASSPATH settings that affect Xalan.
	*
	* <p>Note that this class is not advanced enough to tell you
	* everything about the environment that affects Xalan, and
	* sometimes reports errors that will not actually affect
	* Xalan's behavior.  Currently, it very simplistically
	* checks the JVM's environment for some basic properties and
	* logs them out; it will report a problem if it finds a setting
	* or .jar file that is <i>likely</i> to cause problems.</p>
	*
	* <p>Advanced users can peruse the code herein to help them
	* investigate potential environment problems found; other users
	* may simply send the output from this tool along with any bugs
	* they submit to help us in the debugging process.</p>
	*
	* @param pw PrintWriter to send output to; can be sent to a
	* file that will look similar to a Properties file; defaults
	* to System.out if null
	* @return true if your environment appears to have no major
	* problems; false if potential environment problems found
	* @see #getEnvironmentHash()
	*/
	@:overload @:public public function checkEnvironment(pw : java.io.PrintWriter) : Bool;
	
	/**
	* Fill a hash with basic environment settings that affect Xalan.
	*
	* <p>Worker method called from various places.</p>
	* <p>Various system and CLASSPATH, etc. properties are put into
	* the hash as keys with a brief description of the current state
	* of that item as the value.  Any serious problems will be put in
	* with a key that is prefixed with {@link #ERROR 'ERROR.'} so it
	* stands out in any resulting report; also a key with just that
	* constant will be set as well for any error.</p>
	* <p>Note that some legitimate cases are flaged as potential
	* errors - namely when a developer recompiles xalan.jar on their
	* own - and even a non-error state doesn't guaruntee that
	* everything in the environment is correct.  But this will help
	* point out the most common classpath and system property
	* problems that we've seen.</p>
	*
	* @return Hashtable full of useful environment info about Xalan
	* and related system properties, etc.
	*/
	@:overload @:public public function getEnvironmentHash() : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* Dump a basic Xalan environment report to outWriter.
	*
	* <p>This dumps a simple header and then each of the entries in
	* the Hashtable to our PrintWriter; it does special processing
	* for entries that are .jars found in the classpath.</p>
	*
	* @param h Hashtable of items to report on; presumably
	* filled in by our various check*() methods
	* @return true if your environment appears to have no major
	* problems; false if potential environment problems found
	* @see #appendEnvironmentReport(Node, Document, Hashtable)
	* for an equivalent that appends to a Node instead
	*/
	@:overload @:protected private function writeEnvironmentReport(h : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	/** Prefixed to hash keys that signify serious problems.  */
	@:public @:static @:final public static var ERROR(default, null) : String;
	
	/** Added to descriptions that signify potential problems.  */
	@:public @:static @:final public static var WARNING(default, null) : String;
	
	/** Value for any error found.  */
	@:public @:static @:final public static var ERROR_FOUND(default, null) : String;
	
	/** Prefixed to hash keys that signify version numbers.  */
	@:public @:static @:final public static var VERSION(default, null) : String;
	
	/** Prefixed to hash keys that signify .jars found in classpath.  */
	@:public @:static @:final public static var FOUNDCLASSES(default, null) : String;
	
	/** Marker that a class or .jar was found.  */
	@:public @:static @:final public static var CLASS_PRESENT(default, null) : String;
	
	/** Marker that a class or .jar was not found.  */
	@:public @:static @:final public static var CLASS_NOTPRESENT(default, null) : String;
	
	/** Listing of common .jar files that include Xalan-related classes.  */
	@:public public var jarNames : java.NativeArray<String>;
	
	/**
	* Print out report of .jars found in a classpath.
	*
	* Takes the information encoded from a checkPathForJars()
	* call and dumps it out to our PrintWriter.
	*
	* @param v Vector of Hashtables of .jar file info
	* @param desc description to print out in header
	*
	* @return false if OK, true if any .jars were reported
	* as having errors
	* @see #checkPathForJars(String, String[])
	*/
	@:overload @:protected private function logFoundJars(v : java.util.Vector<Dynamic>, desc : String) : Bool;
	
	/**
	* Stylesheet extension entrypoint: Dump a basic Xalan
	* environment report from getEnvironmentHash() to a Node.
	*
	* <p>Copy of writeEnvironmentReport that creates a Node suitable
	* for other processing instead of a properties-like text output.
	* </p>
	* @param container Node to append our report to
	* @param factory Document providing createElement, etc. services
	* @param h Hash presumably from {@link #getEnvironmentHash()}
	* @see #writeEnvironmentReport(Hashtable)
	* for an equivalent that writes to a PrintWriter instead
	*/
	@:overload @:public public function appendEnvironmentReport(container : org.w3c.dom.Node, factory : org.w3c.dom.Document, h : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Print out report of .jars found in a classpath.
	*
	* Takes the information encoded from a checkPathForJars()
	* call and dumps it out to our PrintWriter.
	*
	* @param container Node to append our report to
	* @param factory Document providing createElement, etc. services
	* @param v Vector of Hashtables of .jar file info
	* @param desc description to print out in header
	*
	* @return false if OK, true if any .jars were reported
	* as having errors
	* @see #checkPathForJars(String, String[])
	*/
	@:overload @:protected private function appendFoundJars(container : org.w3c.dom.Node, factory : org.w3c.dom.Document, v : java.util.Vector<Dynamic>, desc : String) : Bool;
	
	/**
	* Fillin hash with info about SystemProperties.
	*
	* Logs java.class.path and other likely paths; then attempts
	* to search those paths for .jar files with Xalan-related classes.
	*
	* //@todo NOTE: We don't actually search java.ext.dirs for
	* //  *.jar files therein! This should be updated
	*
	* @param h Hashtable to put information in
	* @see #jarNames
	* @see #checkPathForJars(String, String[])
	*/
	@:overload @:protected private function checkSystemProperties(h : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Cheap-o listing of specified .jars found in the classpath.
	*
	* cp should be separated by the usual File.pathSeparator.  We
	* then do a simplistic search of the path for any requested
	* .jar filenames, and return a listing of their names and
	* where (apparently) they came from.
	*
	* @param cp classpath to search
	* @param jars array of .jar base filenames to look for
	*
	* @return Vector of Hashtables filled with info about found .jars
	* @see #jarNames
	* @see #logFoundJars(Vector, String)
	* @see #appendFoundJars(Node, Document, Vector, String )
	* @see #getApparentVersion(String, long)
	*/
	@:overload @:protected private function checkPathForJars(cp : String, jars : java.NativeArray<String>) : java.util.Vector<Dynamic>;
	
	/**
	* Cheap-o method to determine the product version of a .jar.
	*
	* Currently does a lookup into a local table of some recent
	* shipped Xalan builds to determine where the .jar probably
	* came from.  Note that if you recompile Xalan or Xerces
	* yourself this will likely report a potential error, since
	* we can't certify builds other than the ones we ship.
	* Only reports against selected posted Xalan-J builds.
	*
	* //@todo actually look up version info in manifests
	*
	* @param jarName base filename of the .jarfile
	* @param jarSize size of the .jarfile
	*
	* @return String describing where the .jar file probably
	* came from
	*/
	@:overload @:protected private function getApparentVersion(jarName : String, jarSize : haxe.Int64) : String;
	
	/**
	* Report version information about JAXP interfaces.
	*
	* Currently distinguishes between JAXP 1.0.1 and JAXP 1.1,
	* and not found; only tests the interfaces, and does not
	* check for reference implementation versions.
	*
	* @param h Hashtable to put information in
	*/
	@:overload @:protected private function checkJAXPVersion(h : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Report product version information from Xalan-J.
	*
	* Looks for version info in xalan.jar from Xalan-J products.
	*
	* @param h Hashtable to put information in
	*/
	@:overload @:protected private function checkProcessorVersion(h : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Report product version information from common parsers.
	*
	* Looks for version info in xerces.jar/xercesImpl.jar/crimson.jar.
	*
	* //@todo actually look up version info in crimson manifest
	*
	* @param h Hashtable to put information in
	*/
	@:overload @:protected private function checkParserVersion(h : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Report product version information from Ant.
	*
	* @param h Hashtable to put information in
	*/
	@:overload @:protected private function checkAntVersion(h : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Report version info from DOM interfaces.
	*
	* @param h Hashtable to put information in
	*/
	@:overload @:protected private function checkDOML3(h : java.util.Hashtable<Dynamic, Dynamic>) : Bool;
	
	/**
	* Report version info from DOM interfaces.
	*
	* Currently distinguishes between pre-DOM level 2, the DOM
	* level 2 working draft, the DOM level 2 final draft,
	* and not found.
	*
	* @param h Hashtable to put information in
	*/
	@:overload @:protected private function checkDOMVersion(h : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Report version info from SAX interfaces.
	*
	* Currently distinguishes between SAX 2, SAX 2.0beta2,
	* SAX1, and not found.
	*
	* @param h Hashtable to put information in
	*/
	@:overload @:protected private function checkSAXVersion(h : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/** Simple PrintWriter we send output to; defaults to System.out.  */
	@:protected private var outWriter : java.io.PrintWriter;
	
	/**
	* Bottleneck output: calls outWriter.println(s).
	* @param s String to print
	*/
	@:overload @:protected private function logMsg(s : String) : Void;
	
	
}
