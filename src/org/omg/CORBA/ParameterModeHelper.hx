package org.omg.CORBA;
/**
* org/omg/CORBA/ParameterModeHelper.java .
* Generated by the IDL-to-Java compiler (portable), version "3.2"
* from ../../../../src/share/classes/org/omg/PortableInterceptor/CORBAX.idl
* Thursday, February 21, 2013 9:14:02 AM UTC
*/
/**
* Enumeration of parameter modes for Parameter.  Possible vaues:
* <ul>
*   <li>PARAM_IN - Represents an "in" parameter.</li>
*   <li>PARAM_OUT - Represents an "out" parameter.</li>
*   <li>PARAM_INOUT - Represents an "inout" parameter.</li>
* </ul>
*/
extern class ParameterModeHelper
{
	@:overload public static function insert(a : org.omg.CORBA.Any, that : org.omg.CORBA.ParameterMode) : Void;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : org.omg.CORBA.ParameterMode;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	@:overload public static function read(istream : org.omg.CORBA.portable.InputStream) : org.omg.CORBA.ParameterMode;
	
	@:overload public static function write(ostream : org.omg.CORBA.portable.OutputStream, value : org.omg.CORBA.ParameterMode) : Void;
	
	
}