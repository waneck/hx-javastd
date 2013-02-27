package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2004 The Apache Software Foundation.
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
* $Id: ElemContext.java,v 1.2.4.1 2005/09/15 08:15:15 suresh_emailid Exp $
*/
/**
* This class is a stack frame that consists of
* information about the element currently being processed
* by a serializer. Consider this example:
* <pre>
*   <A>
*     <B1>
*     </B1>
*     <B2>
*     </B2>
*   <A>
* </pre>
*
* A stack frame will be pushed for "A" at depth 1,
* then another one for "B1" at depth 2.
* Then "B1" stackframe is popped.  When the stack frame for "B2" is
* pushed, this implementation re-uses the old stack fram object used
* by "B1" to be efficient at not creating too many of these object.
*
* This is by no means a public class, and neither are its fields or methods,
* they are all helper fields for a serializer.
*
* The purpose of this class is to be more consistent with pushing information
* when a new element is being serialized and more quickly restoring the old
* information about the parent element with a simple pop() when the
* child element is done.  Previously there was some redundant and error-prone
* calculations going on to retore information.
*
* @xsl.usage internal
*/
@:internal extern class ElemContext
{
	
}
