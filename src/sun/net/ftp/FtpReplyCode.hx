package sun.net.ftp;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
* This class describes a FTP protocol reply code and associates a meaning
* to the numerical value according to the various RFCs (RFC 959 in
* particular).
*
*/
extern enum FtpReplyCode
{
	RESTART_MARKER;
	SERVICE_READY_IN;
	DATA_CONNECTION_ALREADY_OPEN;
	FILE_STATUS_OK;
	COMMAND_OK;
	NOT_IMPLEMENTED;
	SYSTEM_STATUS;
	DIRECTORY_STATUS;
	FILE_STATUS;
	HELP_MESSAGE;
	NAME_SYSTEM_TYPE;
	SERVICE_READY;
	SERVICE_CLOSING;
	DATA_CONNECTION_OPEN;
	CLOSING_DATA_CONNECTION;
	ENTERING_PASSIVE_MODE;
	ENTERING_EXT_PASSIVE_MODE;
	LOGGED_IN;
	SECURELY_LOGGED_IN;
	SECURITY_EXCHANGE_OK;
	SECURITY_EXCHANGE_COMPLETE;
	FILE_ACTION_OK;
	PATHNAME_CREATED;
	NEED_PASSWORD;
	NEED_ACCOUNT;
	NEED_ADAT;
	NEED_MORE_ADAT;
	FILE_ACTION_PENDING;
	SERVICE_NOT_AVAILABLE;
	CANT_OPEN_DATA_CONNECTION;
	CONNECTION_CLOSED;
	NEED_SECURITY_RESOURCE;
	FILE_ACTION_NOT_TAKEN;
	ACTION_ABORTED;
	INSUFFICIENT_STORAGE;
	COMMAND_UNRECOGNIZED;
	INVALID_PARAMETER;
	BAD_SEQUENCE;
	NOT_IMPLEMENTED_FOR_PARAMETER;
	NOT_LOGGED_IN;
	NEED_ACCOUNT_FOR_STORING;
	PROT_LEVEL_DENIED;
	REQUEST_DENIED;
	FAILED_SECURITY_CHECK;
	UNSUPPORTED_PROT_LEVEL;
	PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY;
	FILE_UNAVAILABLE;
	PAGE_TYPE_UNKNOWN;
	EXCEEDED_STORAGE;
	FILE_NAME_NOT_ALLOWED;
	PROTECTED_REPLY;
	UNKNOWN_ERROR;
	
}

