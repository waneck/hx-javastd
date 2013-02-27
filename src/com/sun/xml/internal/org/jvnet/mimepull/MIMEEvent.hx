package com.sun.xml.internal.org.jvnet.mimepull;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MIMEEvent
{
	
}
/**
* @author Jitendra Kotamraju
*/
@:native('com$sun$xml$internal$org$jvnet$mimepull$MIMEEvent$EVENT_TYPE') extern enum MIMEEvent_EVENT_TYPE
{
	START_MESSAGE;
	START_PART;
	HEADERS;
	CONTENT;
	END_PART;
	END_MESSAGE;
	
}

@:native('com$sun$xml$internal$org$jvnet$mimepull$MIMEEvent$StartMessage') @:internal extern class MIMEEvent_StartMessage extends MIMEEvent
{
	
}
@:native('com$sun$xml$internal$org$jvnet$mimepull$MIMEEvent$StartPart') @:internal extern class MIMEEvent_StartPart extends MIMEEvent
{
	
}
@:native('com$sun$xml$internal$org$jvnet$mimepull$MIMEEvent$EndPart') @:internal extern class MIMEEvent_EndPart extends MIMEEvent
{
	
}
@:native('com$sun$xml$internal$org$jvnet$mimepull$MIMEEvent$Headers') @:internal extern class MIMEEvent_Headers extends MIMEEvent
{
	
}
@:native('com$sun$xml$internal$org$jvnet$mimepull$MIMEEvent$Content') @:internal extern class MIMEEvent_Content extends MIMEEvent
{
	
}
@:native('com$sun$xml$internal$org$jvnet$mimepull$MIMEEvent$EndMessage') @:internal extern class MIMEEvent_EndMessage extends MIMEEvent
{
	
}
