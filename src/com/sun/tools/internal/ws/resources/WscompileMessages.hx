package com.sun.tools.internal.ws.resources;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class WscompileMessages
{
	@:overload public static function localizableWSIMPORT_ARCHIVING_ARTIFACTS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*
	* Archiving the generated artifacts in to {0}.
	*
	*
	*/
	@:overload public static function WSIMPORT_ARCHIVING_ARTIFACTS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_CLASS_MUST_BE_IMPLEMENTATION_CLASS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The class "{0}" is not an endpoint implementation class.
	*
	*/
	@:overload public static function WSGEN_CLASS_MUST_BE_IMPLEMENTATION_CLASS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWRAPPER_TASK_LOADING_INCORRECT_API(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* You are loading JAX-WS {0} API from {1} but this tool requires JAX-WS {2} API.
	*
	*/
	@:overload public static function WRAPPER_TASK_LOADING_INCORRECT_API(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_WSDLLOCATION_CLIENTJAR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* wsdlLocation cannot be specified when using clientJar option
	*
	*/
	@:overload public static function WSIMPORT_WSDLLOCATION_CLIENTJAR() : String;
	
	@:overload public static function localizableWSGEN_CLASS_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Class not found: "{0}"
	*
	*/
	@:overload public static function WSGEN_CLASS_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_HTTP_REDIRECT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Server returned HTTP Status code: "{0}", retrying with "{1}"
	*
	*/
	@:overload public static function WSIMPORT_HTTP_REDIRECT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_AUTH_INFO_NEEDED(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0},  "{1}" needs authorization, please provide authorization file with read access at {2} or use -Xauthfile to give the authorization file and on each line provide authorization information using this format : http[s]://user:password@host:port//<url-path>
	*
	*/
	@:overload public static function WSIMPORT_AUTH_INFO_NEEDED(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_USAGE_EXAMPLES() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*
	* Examples:
	*   wsgen -cp . example.Stock
	*   wsgen -cp . example.Stock -wsdl -servicename '{http://mynamespace}MyService'
	*
	*
	*/
	@:overload public static function WSGEN_USAGE_EXAMPLES() : String;
	
	@:overload public static function localizableWSIMPORT_FETCHING_METADATA() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*
	* Downloading the WSDL and associated metadata
	*
	*
	*/
	@:overload public static function WSIMPORT_FETCHING_METADATA() : String;
	
	@:overload public static function localizableWSGEN_INVALID_PROTOCOL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}" is not a supported protocol.  Supported protocols include: {1}.
	*
	*/
	@:overload public static function WSGEN_INVALID_PROTOCOL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_USAGE_EXAMPLES() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*
	* Examples:
	*   wsimport stock.wsdl -b stock.xml -b stock.xjb
	*   wsimport -d generated http://example.org/stock?wsdl
	*
	*
	*/
	@:overload public static function WSIMPORT_USAGE_EXAMPLES() : String;
	
	@:overload public static function localizableINVOKER_NEED_ENDORSED(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* You are running on JDK6 which comes with JAX-WS {0} API, but this tool requires JAX-WS {1} API. Use the endorsed standards override mechanism (http://java.sun.com/javase/6/docs/technotes/guides/standards/), or use -Xendorsed option.
	*
	*/
	@:overload public static function INVOKER_NEED_ENDORSED(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_MISSING_FILE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Missing WSDL_URI
	*
	*/
	@:overload public static function WSIMPORT_MISSING_FILE() : String;
	
	@:overload public static function localizableWSIMPORT_USAGE_EXTENSIONS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*
	* Extensions:
	*   -XadditionalHeaders              map headers not bound to request or response message to
	*                                    Java method parameters
	*   -Xauthfile                       file to carry authorization information in the format
	*                                    http://username:password@example.org/stock?wsdl
	*   -Xdebug                          print debug information
	*   -Xno-addressing-databinding      enable binding of W3C EndpointReferenceType to Java
	*   -Xnocompile                      do not compile generated Java files
	*   -XdisableSSLHostnameVerification disable the SSL Hostname verification while fetching
	*                                    wsdls
	*
	*/
	@:overload public static function WSIMPORT_USAGE_EXTENSIONS() : String;
	
	@:overload public static function localizableWSIMPORT_USAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Usage: {0} [options] <WSDL_URI>
	*
	* Use "wsimport -help" for a detailed description of options.
	*
	*/
	@:overload public static function WSIMPORT_USAGE(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePLEASE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* specify "-extension" and "-wsdl:protocol XSoap1.2" switches. For example:
	*
	*
	*
	*/
	@:overload public static function PLEASE() : String;
	
	@:overload public static function localizableWSIMPORT_PARSING_WSDL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* parsing WSDL...
	*
	*
	*
	*/
	@:overload public static function WSIMPORT_PARSING_WSDL() : String;
	
	@:overload public static function localizableWSGEN_MISSING_FILE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Missing SEI
	*
	*/
	@:overload public static function WSGEN_MISSING_FILE() : String;
	
	@:overload public static function localizableWSIMPORT_HELP(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*
	* Usage: {0} [options] <WSDL_URI>
	*
	* where [options] include:
	*   -b <path>                 specify jaxws/jaxb binding files or additional schemas
	*                             (Each <path> must have its own -b)
	*   -B<jaxbOption>            Pass this option to JAXB schema compiler
	*   -catalog <file>           specify catalog file to resolve external entity references
	*                             supports TR9401, XCatalog, and OASIS XML Catalog format.
	*   -d <directory>            specify where to place generated output files
	*   -extension                allow vendor extensions - functionality not specified
	*                             by the specification.  Use of extensions may
	*                             result in applications that are not portable or
	*                             may not interoperate with other implementations
	*   -help                     display help
	*   -httpproxy:<host>:<port>  specify a HTTP proxy server (port defaults to 8080)
	*   -keep                     keep generated files
	*   -p <pkg>                  specifies the target package
	*   -quiet                    suppress wsimport output
	*   -s <directory>            specify where to place generated source files
	*   -target <version>         generate code as per the given JAXWS spec version
	*                             Defaults to 2.2, Accepted values are 2.0, 2.1 and 2.2
	*                             e.g. 2.0 will generate compliant code for JAXWS 2.0 spec
	*   -verbose                  output messages about what the compiler is doing
	*   -version                  print version information
	*   -wsdllocation <location>  @WebServiceClient.wsdlLocation value
	*   -clientjar <jarfile>      Creates the jar file of the generated artifacts along with the
	*                             WSDL metadata required for invoking the web service.
	*
	*/
	@:overload public static function WSIMPORT_HELP(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSCOMPILE_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* error: {0}
	*
	*/
	@:overload public static function WSCOMPILE_ERROR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_PROTOCOL_WITHOUT_EXTENSION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The optional protocol "{0}" must be used in conjunction with the "-extension" option.
	*
	*/
	@:overload public static function WSGEN_PROTOCOL_WITHOUT_EXTENSION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_COMPILING_CODE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*
	* Compiling code...
	*
	*
	*/
	@:overload public static function WSIMPORT_COMPILING_CODE() : String;
	
	@:overload public static function localizableWSIMPORT_READING_AUTH_FILE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Trying to read authorization file : "{0}"...
	*
	*/
	@:overload public static function WSIMPORT_READING_AUTH_FILE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_NO_WEBSERVICES_CLASS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* wsgen did not find any class with @WebService annotation. Please specify @WebService annotation on {0}.
	*
	*/
	@:overload public static function WSGEN_NO_WEBSERVICES_CLASS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_ARCHIVE_ARTIFACT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Adding {0} to the archive {1}
	*
	*/
	@:overload public static function WSIMPORT_ARCHIVE_ARTIFACT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSCOMPILE_NO_SUCH_DIRECTORY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* directory not found: {0}
	*
	*/
	@:overload public static function WSCOMPILE_NO_SUCH_DIRECTORY(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSCOMPILE_INFO(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* info: {0}
	*
	*/
	@:overload public static function WSCOMPILE_INFO(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_MAX_REDIRECT_ATTEMPT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Can not get a WSDL maximum number of redirects(5) reached
	*
	*/
	@:overload public static function WSIMPORT_MAX_REDIRECT_ATTEMPT() : String;
	
	@:overload public static function localizableWSIMPORT_WARNING_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* [WARNING] {0}
	*
	*/
	@:overload public static function WSIMPORT_WARNING_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSCOMPILE_INVALID_OPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unrecognized parameter {0}
	*
	*/
	@:overload public static function WSCOMPILE_INVALID_OPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_ERROR_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* [ERROR] {0}
	*
	*/
	@:overload public static function WSIMPORT_ERROR_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_GENERATING_CODE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*
	* Generating code...
	*
	*
	*/
	@:overload public static function WSIMPORT_GENERATING_CODE() : String;
	
	@:overload public static function localizableWSGEN() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* -wsdl:protocol XSoap1.2 -extenson {1}
	*
	*/
	@:overload public static function WSGEN() : String;
	
	@:overload public static function localizableWSIMPORT_NOT_A_FILE_NOR_URL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}" is neither a file name nor an URL
	*
	*/
	@:overload public static function WSIMPORT_NOT_A_FILE_NOR_URL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSCOMPILE_WARNING(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* warning: {0}
	*
	*/
	@:overload public static function WSCOMPILE_WARNING(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWRAPPER_TASK_NEED_ENDORSED(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* You are running on JDK6 which comes with JAX-WS {0} API, but this tool requires JAX-WS {1} API. Use the endorsed standards override mechanism (http://java.sun.com/javase/6/docs/technotes/guides/standards/), or set xendorsed="true" on <{2}>.
	*
	*/
	@:overload public static function WRAPPER_TASK_NEED_ENDORSED(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_NO_SUCH_JAXB_OPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* no such JAXB option: {0}
	*
	*/
	@:overload public static function WSIMPORT_NO_SUCH_JAXB_OPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_AUTH_FILE_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Authorization file "{0}" not found. If the WSDL access needs Basic Authentication, please provide authorization file with read access at {1} or use -Xauthfile to give the authorization file and on each line provide authorization information using this format : http[s]://user:password@host:port//<url-path>
	*
	*/
	@:overload public static function WSIMPORT_AUTH_FILE_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_DEBUG_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* [DEBUG] {0}
	*
	*/
	@:overload public static function WSIMPORT_DEBUG_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_COULD_NOT_CREATE_FILE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "Could not create file: "{0}"
	*
	*/
	@:overload public static function WSGEN_COULD_NOT_CREATE_FILE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_WSDL_ARG_NO_GENWSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The "{0}" option can only be in conjunction with the "-wsdl" option.
	*
	*/
	@:overload public static function WSGEN_WSDL_ARG_NO_GENWSDL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_HELP(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*
	* Usage: {0} [options] <SEI>
	*
	* where [options] include:
	*   -classpath <path>          specify where to find input class files
	*   -cp <path>                 same as -classpath <path>
	*   -d <directory>             specify where to place generated output files
	*   -extension                 allow vendor extensions - functionality not specified
	*                              by the specification.  Use of extensions may
	*                              result in applications that are not portable or
	*                              may not interoperate with other implementations
	*   -help                      display help
	*   -keep                      keep generated files
	*   -r <directory>             resource destination directory, specify where to
	*                              place resouce files such as WSDLs
	*   -s <directory>             specify where to place generated source files
	*   -verbose                   output messages about what the compiler is doing
	*   -version                   print version information
	*   -wsdl[:protocol]           generate a WSDL file. The protocol is optional.
	*                              Valid protocols are {1},
	*                              the default is soap1.1.
	*                              The non stanadard protocols {2}
	*                              can only be used in conjunction with the
	*                              -extension option.
	*   -inlineSchemas             inline schemas in the generated wsdl. Must be
	*                              used in conjunction with the -wsdl option.
	*   -servicename <name>        specify the Service name to use in the generated WSDL
	*                              Used in conjunction with the -wsdl option.
	*   -portname <name>           specify the Port name to use in the generated WSDL
	*                              Used in conjunction with the -wsdl option.
	*
	*/
	@:overload public static function WSGEN_HELP(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_INFO_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* [INFO] {0}
	*
	*/
	@:overload public static function WSIMPORT_INFO_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_INLINE_SCHEMAS_ONLY_WITH_WSDL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "-inlineSchemas" must be used in conjunction with the "-wsdl" option
	*
	*/
	@:overload public static function WSGEN_INLINE_SCHEMAS_ONLY_WITH_WSDL() : String;
	
	@:overload public static function localizableWSGEN_SOAP_12_WITHOUT_EXTENSION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The optional protocol "Xsoap1.2" must be used in conjunction with the "-extension" option.
	*
	*/
	@:overload public static function WSGEN_SOAP_12_WITHOUT_EXTENSION() : String;
	
	@:overload public static function localizableWSIMPORT_ILLEGAL_AUTH_INFO(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}" is not a valid authorization information format. The format is http[s]://user:password@host:port//<url-path>.
	*
	*/
	@:overload public static function WSIMPORT_ILLEGAL_AUTH_INFO(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSCOMPILE_COMPILATION_FAILED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* compilation failed, errors should have been reported
	*
	*/
	@:overload public static function WSCOMPILE_COMPILATION_FAILED() : String;
	
	@:overload public static function localizableWSCOMPILE_MISSING_OPTION_ARGUMENT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* option "{0}" requires an argument
	*
	*/
	@:overload public static function WSCOMPILE_MISSING_OPTION_ARGUMENT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_DOCUMENT_DOWNLOAD(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*
	* Downloading metadata document from {0} to {1}
	*
	*/
	@:overload public static function WSIMPORT_DOCUMENT_DOWNLOAD(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_CANNOT_GEN_WSDL_FOR_NON_SOAP_BINDING(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* wsgen can not generate WSDL for non-SOAP binding: {0} on Class {1}
	*
	*/
	@:overload public static function WSGEN_CANNOT_GEN_WSDL_FOR_NON_SOAP_BINDING(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSCOMPILE_DUPLICATE_OPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* duplicate option: {0}
	*
	*/
	@:overload public static function WSCOMPILE_DUPLICATE_OPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_FAILED_TO_PARSE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to parse "{0}": {1}
	*
	*/
	@:overload public static function WSIMPORT_FAILED_TO_PARSE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_NO_WSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to read the WSDL document: {0}, because 1) could not find the document; /2) the document could not be read; 3) the root element of the document is not <wsdl:definitions>.
	*
	*/
	@:overload public static function WSIMPORT_NO_WSDL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_AUTH_INFO_LINENO(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "line {0} of {1}
	*
	*/
	@:overload public static function WSIMPORT_AUTH_INFO_LINENO(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_USAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Usage: {0} [options] <SEI>
	*
	* Use "wsgen -help" for a detailed description of options.
	*
	*/
	@:overload public static function WSGEN_USAGE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_SERVICENAME_MISSING_LOCALNAME(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The service name "{0}" is missing a localname.
	*
	*/
	@:overload public static function WSGEN_SERVICENAME_MISSING_LOCALNAME(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_SERVICENAME_MISSING_NAMESPACE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The service name "{0}" is missing a namespace.
	*
	*/
	@:overload public static function WSGEN_SERVICENAME_MISSING_NAMESPACE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_INVALID_TRANSPORT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}" is not a supported transport.  Supported transport include: {1}.
	*
	*/
	@:overload public static function WSGEN_INVALID_TRANSPORT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_CANNOT_GEN_WSDL_FOR_SOAP_12_BINDING(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* wsgen can not generate WSDL for SOAP 1.2 binding: {0} on class: {1}.
	*
	*
	*/
	@:overload public static function WSGEN_CANNOT_GEN_WSDL_FOR_SOAP_12_BINDING(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSIMPORT_ILLEGAL_TARGET_VERSION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}" is not a valid target version. "2.0" and "2.1" are supported.
	*
	*/
	@:overload public static function WSIMPORT_ILLEGAL_TARGET_VERSION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_PORTNAME_MISSING_LOCALNAME(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The port name "{0}" is missing a localname.
	*
	*/
	@:overload public static function WSGEN_PORTNAME_MISSING_LOCALNAME(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSGEN_PORTNAME_MISSING_NAMESPACE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The port name "{0}" is missing a namespace.
	*
	*/
	@:overload public static function WSGEN_PORTNAME_MISSING_NAMESPACE(arg0 : Dynamic) : String;
	
	
}
