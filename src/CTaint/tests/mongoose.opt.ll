; ModuleID = 'mongoose.opt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.0 = type { i8*, i64, i8* }
%struct.ssl_func = type { i8*, void ()* }
%struct.mg_context = type { i32, %struct.ssl_ctx_st*, [24 x i8*], %struct.mg_callbacks, i8*, %struct.socket*, i32, i32, %union.pthread_mutex_t, %union.pthread_cond_t, [20 x %struct.socket], i32, i32, %union.pthread_cond_t, %union.pthread_cond_t }
%struct.ssl_ctx_st = type opaque
%struct.mg_callbacks = type { i32 (%struct.mg_connection*)*, void (%struct.mg_connection*, i32)*, i32 (%struct.mg_connection*, i8*)*, i32 (i8*, i8*)*, i32 (%struct.mg_connection*)*, void (%struct.mg_connection*)*, i32 (%struct.mg_connection*, i32, i8*, i64)*, i8* (%struct.mg_connection*, i8*, i64*)*, void (%struct.mg_connection*, i8*)*, void (%struct.mg_connection*, i8*)*, void (i8*, i8**)*, void (i8*, i8**)* }
%struct.mg_connection = type { %struct.mg_request_info, %struct.mg_context*, %struct.ssl_st*, %struct.ssl_ctx_st*, %struct.socket, i64, i64, i64, i64, i8*, i8*, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.mg_request_info = type { i8*, i8*, i8*, i8*, i8*, i64, i32, i32, i8*, i8*, i32, [64 x %struct.mg_header] }
%struct.mg_header = type { i8*, i8* }
%struct.ssl_st = type opaque
%struct.socket = type { i32, %union.usa, %union.usa, i8 }
%union.usa = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct.dir_scan_data = type { %struct.de*, i32, i32 }
%struct.de = type { %struct.mg_connection*, i8*, %struct.file }
%struct.file = type { i32, i64, i64, %struct._IO_FILE*, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.MD5Context = type { [4 x i32], [2 x i32], [64 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.vec = type { i8*, i64 }
%struct.ssl_method_st = type opaque
%struct.sockaddr = type { i16, [14 x i8] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.pollfd = type { i32, i16, i16 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.cgi_env_block = type { %struct.mg_connection*, [4096 x i8], i32, [64 x i8*], i32 }
%struct.ah = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.timeval = type { i64, i64 }
%union.anon = type { i8* }
%struct.linger = type { i32, i32 }

@config_options = internal global [49 x i8*] [i8* getelementptr inbounds ([12 x i8]* @.str403, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str404, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str405, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8]* @.str406, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8]* @.str407, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8]* @.str408, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8]* @.str409, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str410, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str411, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str412, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str413, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8]* @.str414, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([25 x i8]* @.str415, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str416, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8]* @.str417, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8]* @.str418, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8]* @.str419, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str420, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str421, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str422, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8]* @.str423, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8]* @.str424, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str425, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str426, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8]* @.str427, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8]* @.str428, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str429, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str430, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8]* @.str431, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8]* @.str432, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8]* @.str433, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str434, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [4 x i8] c"4.1\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"%X\0D\0A%s\0D\0A\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"s >= p\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"mongoose.c\00", align 1
@__PRETTY_FUNCTION__.mg_get_var = private unnamed_addr constant [67 x i8] c"int mg_get_var(const char *, size_t, const char *, char *, size_t)\00", align 1
@builtin_mime_types = internal constant [48 x %struct.anon.0] [%struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str318, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8]* @.str319, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str320, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str319, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str321, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8]* @.str319, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8]* @.str322, i32 0, i32 0), i64 6, i8* getelementptr inbounds ([10 x i8]* @.str319, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str323, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([9 x i8]* @.str324, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([4 x i8]* @.str325, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([25 x i8]* @.str326, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str327, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([13 x i8]* @.str328, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str329, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str330, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str331, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([11 x i8]* @.str332, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str333, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([11 x i8]* @.str332, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str334, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str335, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str336, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([14 x i8]* @.str337, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str338, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([9 x i8]* @.str339, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([25 x i8]* @.str340, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str341, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str342, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str343, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str344, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str345, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str346, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str347, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str348, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str349, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str350, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str351, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([21 x i8]* @.str352, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str353, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([9 x i8]* @.str354, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str355, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([10 x i8]* @.str356, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str357, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([16 x i8]* @.str358, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str359, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str358, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([4 x i8]* @.str360, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([21 x i8]* @.str352, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str361, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([19 x i8]* @.str362, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str363, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([25 x i8]* @.str364, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str365, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([29 x i8]* @.str366, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str367, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([18 x i8]* @.str368, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str369, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([21 x i8]* @.str370, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str371, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([18 x i8]* @.str372, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([4 x i8]* @.str373, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([21 x i8]* @.str374, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str375, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([29 x i8]* @.str376, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str377, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([29 x i8]* @.str376, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str378, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str379, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str380, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str381, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str382, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([30 x i8]* @.str383, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str384, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([11 x i8]* @.str385, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str386, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([11 x i8]* @.str387, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8]* @.str388, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([11 x i8]* @.str385, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str389, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str390, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str391, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str392, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str393, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([12 x i8]* @.str394, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str395, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([15 x i8]* @.str396, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str397, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8]* @.str398, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str399, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([10 x i8]* @.str400, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8]* @.str401, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([23 x i8]* @.str402, i32 0, i32 0) }, %struct.anon.0 zeroinitializer], align 16
@.str5 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str10 = private unnamed_addr constant [16 x i8] c"%[^:]:%[^:]:%*s\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"%s:%s:%s\0A\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@mg_url_encode.dont_escape = internal global i8* getelementptr inbounds ([10 x i8]* @.str14, i32 0, i32 0), align 8
@.str14 = private unnamed_addr constant [10 x i8] c"._-$,;~()\00", align 1
@mg_url_encode.hex = internal global i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0), align 8
@.str15 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1
@.str17 = private unnamed_addr constant [15 x i8] c"File not found\00", align 1
@.str18 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"boundary=\00", align 1
@.str20 = private unnamed_addr constant [19 x i8] c"boundary=\22%99[^\22]\22\00", align 1
@.str21 = private unnamed_addr constant [14 x i8] c"boundary=%99s\00", align 1
@.str22 = private unnamed_addr constant [37 x i8] c"len >= 0 && len <= (int) sizeof(buf)\00", align 1
@__PRETTY_FUNCTION__.mg_upload = private unnamed_addr constant [52 x i8] c"int mg_upload(struct mg_connection *, const char *)\00", align 1
@.str23 = private unnamed_addr constant [49 x i8] c"Content-Disposition: %*s %*s filename=\22%1023[^\22]\00", align 1
@.str24 = private unnamed_addr constant [19 x i8] c"len >= headers_len\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"\0D\0A--\00", align 1
@ssl_sw = internal global [22 x %struct.ssl_func] [%struct.ssl_func { i8* getelementptr inbounds ([9 x i8]* @.str288, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([11 x i8]* @.str289, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([12 x i8]* @.str290, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([9 x i8]* @.str291, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([10 x i8]* @.str292, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([14 x i8]* @.str293, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([11 x i8]* @.str294, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([8 x i8]* @.str295, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([12 x i8]* @.str296, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([21 x i8]* @.str297, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([17 x i8]* @.str298, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([28 x i8]* @.str299, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([29 x i8]* @.str300, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([30 x i8]* @.str301, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([13 x i8]* @.str302, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([23 x i8]* @.str303, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([35 x i8]* @.str304, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([21 x i8]* @.str305, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([12 x i8]* @.str306, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([19 x i8]* @.str307, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([13 x i8]* @.str308, i32 0, i32 0), void ()* null }, %struct.ssl_func zeroinitializer], align 16
@mg_connect.fake_ctx = internal global %struct.mg_context zeroinitializer, align 8
@.str28 = private unnamed_addr constant [13 x i8] c"calloc(): %s\00", align 1
@.str29 = private unnamed_addr constant [18 x i8] c"SSL_CTX_new error\00", align 1
@.str30 = private unnamed_addr constant [22 x i8] c"Error sending request\00", align 1
@.str31 = private unnamed_addr constant [19 x i8] c"Invalid option: %s\00", align 1
@.str32 = private unnamed_addr constant [32 x i8] c"%s: option value cannot be NULL\00", align 1
@.str33 = private unnamed_addr constant [30 x i8] c"warning: %s: duplicate option\00", align 1
@.str34 = private unnamed_addr constant [32 x i8] c"Cannot start worker thread: %ld\00", align 1
@.str35 = private unnamed_addr constant [41 x i8] c"Cannot create new connection struct, OOM\00", align 1
@.str36 = private unnamed_addr constant [22 x i8] c"ctx->num_threads >= 0\00", align 1
@__PRETTY_FUNCTION__.worker_thread = private unnamed_addr constant [28 x i8] c"void *worker_thread(void *)\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str38 = private unnamed_addr constant [13 x i8] c"Server Error\00", align 1
@.str39 = private unnamed_addr constant [18 x i8] c"Invalid URI: [%s]\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str42 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str43 = private unnamed_addr constant [23 x i8] c"Bad HTTP version: [%s]\00", align 1
@.str44 = private unnamed_addr constant [17 x i8] c"Bad HTTP version\00", align 1
@.str45 = private unnamed_addr constant [17 x i8] c"discard_len >= 0\00", align 1
@__PRETTY_FUNCTION__.process_new_connection = private unnamed_addr constant [52 x i8] c"void process_new_connection(struct mg_connection *)\00", align 1
@.str46 = private unnamed_addr constant [20 x i8] c"conn->data_len >= 0\00", align 1
@.str47 = private unnamed_addr constant [33 x i8] c"conn->data_len <= conn->buf_size\00", align 1
@.str48 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str49 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str50 = private unnamed_addr constant [21 x i8] c"%d/%b/%Y:%H:%M:%S %z\00", align 1
@.str51 = private unnamed_addr constant [36 x i8] c"%s - %s [%s] \22%s %s HTTP/%s\22 %d %ld\00", align 1
@.str52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str53 = private unnamed_addr constant [8 x i8] c"Referer\00", align 1
@.str54 = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@.str55 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str56 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str57 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str58 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str59 = private unnamed_addr constant [6 x i8] c"MKCOL\00", align 1
@.str60 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str61 = private unnamed_addr constant [11 x i8] c"No Content\00", align 1
@.str62 = private unnamed_addr constant [7 x i8] c"Locked\00", align 1
@.str63 = private unnamed_addr constant [15 x i8] c"remove(%s): %s\00", align 1
@http_500_error = internal global i8* getelementptr inbounds ([22 x i8]* @.str211, i32 0, i32 0), align 8
@.str64 = private unnamed_addr constant [50 x i8] c"HTTP/1.1 301 Moved Permanently\0D\0ALocation: %s/\0D\0A\0D\0A\00", align 1
@.str65 = private unnamed_addr constant [9 x i8] c"PROPFIND\00", align 1
@.str66 = private unnamed_addr constant [25 x i8] c"Directory Listing Denied\00", align 1
@.str67 = private unnamed_addr constant [25 x i8] c"Directory listing denied\00", align 1
@.str68 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str69 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str70 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str71 = private unnamed_addr constant [16 x i8] c"Not Implemented\00", align 1
@.str72 = private unnamed_addr constant [29 x i8] c"Method %s is not implemented\00", align 1
@.str73 = private unnamed_addr constant [13 x i8] c"Not Modified\00", align 1
@.str74 = private unnamed_addr constant [18 x i8] c"If-Modified-Since\00", align 1
@.str75 = private unnamed_addr constant [14 x i8] c"If-None-Match\00", align 1
@parse_date_string.days_before_month = internal constant [12 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334], align 16
@.str76 = private unnamed_addr constant [19 x i8] c"%d/%3s/%d %d:%d:%d\00", align 1
@.str77 = private unnamed_addr constant [19 x i8] c"%d %3s %d %d:%d:%d\00", align 1
@.str78 = private unnamed_addr constant [25 x i8] c"%*3s, %d %3s %d %d:%d:%d\00", align 1
@.str79 = private unnamed_addr constant [19 x i8] c"%d-%3s-%d %d:%d:%d\00", align 1
@month_names = internal global [12 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str81, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str82, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str87, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str88, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str89, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str91, i32 0, i32 0)], align 16
@.str80 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str81 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str82 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str83 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str84 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str85 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str86 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str87 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str88 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str89 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str90 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str91 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str92 = private unnamed_addr constant [10 x i8] c"\22%lx.%ld\22\00", align 1
@.str93 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str94 = private unnamed_addr constant [14 x i8] c"fopen(%s): %s\00", align 1
@.str95 = private unnamed_addr constant [59 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Type: %.*s\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@.str96 = private unnamed_addr constant [36 x i8] c"SSI #include level is too deep (%s)\00", align 1
@.str97 = private unnamed_addr constant [25 x i8] c"len <= (int) sizeof(buf)\00", align 1
@__PRETTY_FUNCTION__.send_ssi_file = private unnamed_addr constant [77 x i8] c"void send_ssi_file(struct mg_connection *, const char *, struct file *, int)\00", align 1
@.str98 = private unnamed_addr constant [6 x i8] c"<!--#\00", align 1
@.str99 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str100 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str101 = private unnamed_addr constant [30 x i8] c"%s: unknown SSI command: \22%s\22\00", align 1
@.str102 = private unnamed_addr constant [25 x i8] c"%s: SSI tag is too large\00", align 1
@.str103 = private unnamed_addr constant [9 x i8] c" \22%[^\22]\22\00", align 1
@.str104 = private unnamed_addr constant [20 x i8] c"Bad SSI #exec: [%s]\00", align 1
@.str105 = private unnamed_addr constant [27 x i8] c"Cannot SSI #exec: [%s]: %s\00", align 1
@.str106 = private unnamed_addr constant [17 x i8] c" virtual=\22%[^\22]\22\00", align 1
@.str107 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str108 = private unnamed_addr constant [17 x i8] c" abspath=\22%[^\22]\22\00", align 1
@.str109 = private unnamed_addr constant [14 x i8] c" file=\22%[^\22]\22\00", align 1
@.str110 = private unnamed_addr constant [23 x i8] c"Bad SSI #include: [%s]\00", align 1
@.str111 = private unnamed_addr constant [46 x i8] c"Cannot open SSI #include: [%s]: fopen(%s): %s\00", align 1
@.str112 = private unnamed_addr constant [16 x i8] c"vsnprintf error\00", align 1
@.str113 = private unnamed_addr constant [36 x i8] c"truncating vsnprintf buffer: [%.*s]\00", align 1
@.str114 = private unnamed_addr constant [27 x i8] c"Cannot create CGI pipe: %s\00", align 1
@.str115 = private unnamed_addr constant [34 x i8] c"Cannot spawn CGI process [%s]: %s\00", align 1
@.str116 = private unnamed_addr constant [10 x i8] c"fopen: %s\00", align 1
@.str117 = private unnamed_addr constant [71 x i8] c"CGI program sent malformed or too big (>%u bytes) HTTP headers: [%.*s]\00", align 1
@.str118 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str119 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str120 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str121 = private unnamed_addr constant [17 x i8] c"HTTP/1.1 %d %s\0D\0A\00", align 1
@.str122 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1
@.str123 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str124 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str125 = private unnamed_addr constant [17 x i8] c"*nread <= bufsiz\00", align 1
@__PRETTY_FUNCTION__.read_request = private unnamed_addr constant [69 x i8] c"int read_request(FILE *, struct mg_connection *, char *, int, int *)\00", align 1
@.str126 = private unnamed_addr constant [7 x i8] c"Expect\00", align 1
@.str127 = private unnamed_addr constant [17 x i8] c"fp != ((void*)0)\00", align 1
@__PRETTY_FUNCTION__.forward_body_data = private unnamed_addr constant [69 x i8] c"int forward_body_data(struct mg_connection *, FILE *, SOCKET, SSL *)\00", align 1
@.str128 = private unnamed_addr constant [16 x i8] c"Length Required\00", align 1
@.str129 = private unnamed_addr constant [13 x i8] c"100-continue\00", align 1
@.str130 = private unnamed_addr constant [19 x i8] c"Expectation Failed\00", align 1
@.str131 = private unnamed_addr constant [26 x i8] c"HTTP/1.1 100 Continue\0D\0A\0D\0A\00", align 1
@.str132 = private unnamed_addr constant [18 x i8] c"buffered_len >= 0\00", align 1
@.str133 = private unnamed_addr constant [28 x i8] c"conn->consumed_content == 0\00", align 1
@.str134 = private unnamed_addr constant [11 x i8] c"fork(): %s\00", align 1
@.str135 = private unnamed_addr constant [18 x i8] c"%s: chdir(%s): %s\00", align 1
@__func__.spawn_process = private unnamed_addr constant [14 x i8] c"spawn_process\00", align 1
@.str136 = private unnamed_addr constant [20 x i8] c"%s: dup2(%d, 0): %s\00", align 1
@.str137 = private unnamed_addr constant [20 x i8] c"%s: dup2(%d, 1): %s\00", align 1
@.str138 = private unnamed_addr constant [19 x i8] c"%s: execle(%s): %s\00", align 1
@.str139 = private unnamed_addr constant [22 x i8] c"%s: execle(%s %s): %s\00", align 1
@.str140 = private unnamed_addr constant [15 x i8] c"SERVER_NAME=%s\00", align 1
@.str141 = private unnamed_addr constant [15 x i8] c"SERVER_ROOT=%s\00", align 1
@.str142 = private unnamed_addr constant [17 x i8] c"DOCUMENT_ROOT=%s\00", align 1
@.str143 = private unnamed_addr constant [22 x i8] c"SERVER_SOFTWARE=%s/%s\00", align 1
@.str144 = private unnamed_addr constant [9 x i8] c"Mongoose\00", align 1
@.str145 = private unnamed_addr constant [26 x i8] c"GATEWAY_INTERFACE=CGI/1.1\00", align 1
@.str146 = private unnamed_addr constant [25 x i8] c"SERVER_PROTOCOL=HTTP/1.1\00", align 1
@.str147 = private unnamed_addr constant [20 x i8] c"REDIRECT_STATUS=200\00", align 1
@.str148 = private unnamed_addr constant [15 x i8] c"SERVER_PORT=%d\00", align 1
@.str149 = private unnamed_addr constant [18 x i8] c"REQUEST_METHOD=%s\00", align 1
@.str150 = private unnamed_addr constant [15 x i8] c"REMOTE_ADDR=%s\00", align 1
@.str151 = private unnamed_addr constant [15 x i8] c"REMOTE_PORT=%d\00", align 1
@.str152 = private unnamed_addr constant [19 x i8] c"REQUEST_URI=%s%s%s\00", align 1
@.str153 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str154 = private unnamed_addr constant [17 x i8] c"SCRIPT_NAME=%.*s\00", align 1
@.str155 = private unnamed_addr constant [13 x i8] c"PATH_INFO=%s\00", align 1
@.str156 = private unnamed_addr constant [19 x i8] c"SCRIPT_NAME=%.*s%s\00", align 1
@.str157 = private unnamed_addr constant [19 x i8] c"SCRIPT_FILENAME=%s\00", align 1
@.str158 = private unnamed_addr constant [19 x i8] c"PATH_TRANSLATED=%s\00", align 1
@.str159 = private unnamed_addr constant [9 x i8] c"HTTPS=%s\00", align 1
@.str160 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str161 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str162 = private unnamed_addr constant [16 x i8] c"CONTENT_TYPE=%s\00", align 1
@.str163 = private unnamed_addr constant [16 x i8] c"QUERY_STRING=%s\00", align 1
@.str164 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str165 = private unnamed_addr constant [18 x i8] c"CONTENT_LENGTH=%s\00", align 1
@.str166 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str167 = private unnamed_addr constant [8 x i8] c"PATH=%s\00", align 1
@.str168 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@.str169 = private unnamed_addr constant [19 x i8] c"LD_LIBRARY_PATH=%s\00", align 1
@.str170 = private unnamed_addr constant [8 x i8] c"PERLLIB\00", align 1
@.str171 = private unnamed_addr constant [11 x i8] c"PERLLIB=%s\00", align 1
@.str172 = private unnamed_addr constant [15 x i8] c"REMOTE_USER=%s\00", align 1
@.str173 = private unnamed_addr constant [17 x i8] c"AUTH_TYPE=Digest\00", align 1
@.str174 = private unnamed_addr constant [11 x i8] c"HTTP_%s=%s\00", align 1
@.str175 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str176 = private unnamed_addr constant [62 x i8] c"blk->nvars < (int) (sizeof(blk->vars) / sizeof(blk->vars[0]))\00", align 1
@__PRETTY_FUNCTION__.prepare_cgi_environment = private unnamed_addr constant [91 x i8] c"void prepare_cgi_environment(struct mg_connection *, const char *, struct cgi_env_block *)\00", align 1
@.str177 = private unnamed_addr constant [13 x i8] c"blk->len > 0\00", align 1
@.str178 = private unnamed_addr constant [34 x i8] c"blk->len < (int) sizeof(blk->buf)\00", align 1
@.str179 = private unnamed_addr constant [11 x i8] c"space >= 0\00", align 1
@__PRETTY_FUNCTION__.addenv = private unnamed_addr constant [56 x i8] c"char *addenv(struct cgi_env_block *, const char *, ...)\00", align 1
@.str180 = private unnamed_addr constant [38 x i8] c"%s: CGI env buffer truncated for [%s]\00", align 1
@__func__.addenv = private unnamed_addr constant [7 x i8] c"addenv\00", align 1
@.str181 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@handle_directory_request.data = private unnamed_addr constant %struct.dir_scan_data { %struct.de* null, i32 0, i32 128 }, align 8
@.str182 = private unnamed_addr constant [22 x i8] c"Cannot open directory\00", align 1
@.str183 = private unnamed_addr constant [23 x i8] c"Error: opendir(%s): %s\00", align 1
@.str184 = private unnamed_addr constant [88 x i8] c"HTTP/1.1 200 OK\0D\0ATransfer-Encoding: Chunked\0D\0AContent-Type: text/html; charset=utf-8\0D\0A\0D\0A\00", align 1
@.str185 = private unnamed_addr constant [280 x i8] c"<html><head><title>Index of %s</title><style>th {text-align: left;}</style></head><body><h1>Index of %s</h1><pre><table cellpadding=\220\22><tr><th><a href=\22?n%c\22>Name</a></th><th><a href=\22?d%c\22>Modified</a></th><th><a href=\22?s%c\22>Size</a></th></tr><tr><td colspan=\223\22><hr></td></tr>\00", align 1
@.str186 = private unnamed_addr constant [81 x i8] c"<tr><td><a href=\22%s%s\22>%s</a></td><td>&nbsp;%s</td><td>&nbsp;&nbsp;%s</td></tr>\0A\00", align 1
@.str187 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str188 = private unnamed_addr constant [17 x i8] c"Parent directory\00", align 1
@.str189 = private unnamed_addr constant [23 x i8] c"</table></body></html>\00", align 1
@.str190 = private unnamed_addr constant [6 x i8] c"0\0D\0A\0D\0A\00", align 1
@.str191 = private unnamed_addr constant [12 x i8] c"[DIRECTORY]\00", align 1
@.str192 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str193 = private unnamed_addr constant [6 x i8] c"%.1fk\00", align 1
@.str194 = private unnamed_addr constant [6 x i8] c"%.1fM\00", align 1
@.str195 = private unnamed_addr constant [6 x i8] c"%.1fG\00", align 1
@.str196 = private unnamed_addr constant [15 x i8] c"%d-%b-%Y %H:%M\00", align 1
@.str197 = private unnamed_addr constant [85 x i8] c"<tr><td><a href=\22%s%s%s\22>%s%s</a></td><td>&nbsp;%s</td><td>&nbsp;&nbsp;%s</td></tr>\0A\00", align 1
@.str198 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str199 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str200 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str201 = private unnamed_addr constant [88 x i8] c"HTTP/1.1 207 Multi-Status\0D\0AConnection: close\0D\0AContent-Type: text/xml; charset=utf-8\0D\0A\0D\0A\00", align 1
@.str202 = private unnamed_addr constant [70 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?><d:multistatus xmlns:d='DAV:'>\0A\00", align 1
@.str203 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str204 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str205 = private unnamed_addr constant [17 x i8] c"</d:multistatus>\00", align 1
@.str206 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str207 = private unnamed_addr constant [244 x i8] c"<d:response><d:href>%s</d:href><d:propstat><d:prop><d:resourcetype>%s</d:resourcetype><d:getcontentlength>%ld</d:getcontentlength><d:getlastmodified>%s</d:getlastmodified></d:prop><d:status>HTTP/1.1 200 OK</d:status></d:propstat></d:response>\0A\00", align 1
@.str208 = private unnamed_addr constant [16 x i8] c"<d:collection/>\00", align 1
@.str209 = private unnamed_addr constant [26 x i8] c"%a, %d %b %Y %H:%M:%S GMT\00", align 1
@.str210 = private unnamed_addr constant [13 x i8] c"**.htpasswd$\00", align 1
@.str211 = private unnamed_addr constant [22 x i8] c"Internal Server Error\00", align 1
@.str212 = private unnamed_addr constant [19 x i8] c"Method Not Allowed\00", align 1
@.str213 = private unnamed_addr constant [14 x i8] c"mkcol(%s): %s\00", align 1
@.str214 = private unnamed_addr constant [23 x i8] c"Unsupported media type\00", align 1
@.str215 = private unnamed_addr constant [24 x i8] c"HTTP/1.1 %d Created\0D\0A\0D\0A\00", align 1
@.str216 = private unnamed_addr constant [10 x i8] c"Forbidden\00", align 1
@.str217 = private unnamed_addr constant [9 x i8] c"Conflict\00", align 1
@.str218 = private unnamed_addr constant [19 x i8] c"HTTP/1.1 %d OK\0D\0A\0D\0A\00", align 1
@.str219 = private unnamed_addr constant [16 x i8] c"put_dir(%s): %s\00", align 1
@.str220 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str221 = private unnamed_addr constant [14 x i8] c"Content-Range\00", align 1
@.str222 = private unnamed_addr constant [38 x i8] c"HTTP/1.1 %d OK\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1
@.str223 = private unnamed_addr constant [14 x i8] c"bytes=%ld-%ld\00", align 1
@.str224 = private unnamed_addr constant [15 x i8] c"%[^:]:%[^:]:%s\00", align 1
@.str225 = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str226 = private unnamed_addr constant [8 x i8] c"Digest \00", align 1
@.str227 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str228 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str229 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str230 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str231 = private unnamed_addr constant [7 x i8] c"cnonce\00", align 1
@.str232 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str233 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str234 = private unnamed_addr constant [4 x i8] c"qop\00", align 1
@.str235 = private unnamed_addr constant [3 x i8] c"nc\00", align 1
@.str236 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@.str237 = private unnamed_addr constant [100 x i8] c"HTTP/1.1 200 OK\0D\0AAllow: GET, POST, HEAD, CONNECT, PUT, DELETE, OPTIONS, PROPFIND, MKCOL\0D\0ADAV: 1\0D\0A\0D\0A\00", align 1
@.str238 = private unnamed_addr constant [111 x i8] c"HTTP/1.1 401 Unauthorized\0D\0AContent-Length: 0\0D\0AWWW-Authenticate: Digest qop=\22auth\22, realm=\22%s\22, nonce=\22%lu\22\0D\0A\0D\0A\00", align 1
@.str239 = private unnamed_addr constant [23 x i8] c"%s: cannot open %s: %s\00", align 1
@__func__.check_authorization = private unnamed_addr constant [20 x i8] c"check_authorization\00", align 1
@.str240 = private unnamed_addr constant [10 x i8] c".htpasswd\00", align 1
@.str241 = private unnamed_addr constant [9 x i8] c"%.*s%c%s\00", align 1
@.str242 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str243 = private unnamed_addr constant [10 x i8] c"%1024[^:]\00", align 1
@.str244 = private unnamed_addr constant [50 x i8] c"HTTP/1.1 302 Found\0D\0ALocation: https://%s:%d%s\0D\0A\0D\0A\00", align 1
@.str245 = private unnamed_addr constant [6 x i8] c"%lf%c\00", align 1
@.str246 = private unnamed_addr constant [17 x i8] c"%d.%d.%d.%d/%d%n\00", align 1
@.str247 = private unnamed_addr constant [14 x i8] c"%d.%d.%d.%d%n\00", align 1
@.str248 = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str249 = private unnamed_addr constant [16 x i8] c"Accept-Encoding\00", align 1
@.str250 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str251 = private unnamed_addr constant [6 x i8] c"%s.gz\00", align 1
@crypto_sw = internal global [6 x %struct.ssl_func] [%struct.ssl_func { i8* getelementptr inbounds ([17 x i8]* @.str252, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([28 x i8]* @.str253, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([23 x i8]* @.str254, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([14 x i8]* @.str255, i32 0, i32 0), void ()* null }, %struct.ssl_func { i8* getelementptr inbounds ([17 x i8]* @.str256, i32 0, i32 0), void ()* null }, %struct.ssl_func zeroinitializer], align 16
@ssl_mutexes = internal global %union.pthread_mutex_t* null, align 8
@.str252 = private unnamed_addr constant [17 x i8] c"CRYPTO_num_locks\00", align 1
@.str253 = private unnamed_addr constant [28 x i8] c"CRYPTO_set_locking_callback\00", align 1
@.str254 = private unnamed_addr constant [23 x i8] c"CRYPTO_set_id_callback\00", align 1
@.str255 = private unnamed_addr constant [14 x i8] c"ERR_get_error\00", align 1
@.str256 = private unnamed_addr constant [17 x i8] c"ERR_error_string\00", align 1
@.str257 = private unnamed_addr constant [33 x i8] c"%s: %s is not allowed to connect\00", align 1
@__func__.accept_new_connection = private unnamed_addr constant [22 x i8] c"accept_new_connection\00", align 1
@.str258 = private unnamed_addr constant [36 x i8] c"%s: subnet must be [+|-]x.x.x.x[/x]\00", align 1
@__func__.check_acl = private unnamed_addr constant [10 x i8] c"check_acl\00", align 1
@.str259 = private unnamed_addr constant [22 x i8] c"%s: unknown user [%s]\00", align 1
@__func__.set_uid_option = private unnamed_addr constant [15 x i8] c"set_uid_option\00", align 1
@.str260 = private unnamed_addr constant [19 x i8] c"%s: setgid(%s): %s\00", align 1
@.str261 = private unnamed_addr constant [19 x i8] c"%s: setuid(%s): %s\00", align 1
@.str262 = private unnamed_addr constant [51 x i8] c"%s: %.*s: invalid port spec. Expecting list of: %s\00", align 1
@__func__.set_ports_option = private unnamed_addr constant [17 x i8] c"set_ports_option\00", align 1
@.str263 = private unnamed_addr constant [23 x i8] c"[IP_ADDRESS:]PORT[s|r]\00", align 1
@.str264 = private unnamed_addr constant [55 x i8] c"Cannot add SSL socket, is -ssl_certificate option set?\00", align 1
@.str265 = private unnamed_addr constant [33 x i8] c"%s: cannot bind to %.*s: %d (%s)\00", align 1
@.str266 = private unnamed_addr constant [17 x i8] c"%u.%u.%u.%u:%u%n\00", align 1
@.str267 = private unnamed_addr constant [5 x i8] c"%u%n\00", align 1
@.str268 = private unnamed_addr constant [10 x i8] c"libssl.so\00", align 1
@.str269 = private unnamed_addr constant [13 x i8] c"libcrypto.so\00", align 1
@.str270 = private unnamed_addr constant [31 x i8] c"SSL_CTX_new (server) error: %s\00", align 1
@__func__.set_ssl_option = private unnamed_addr constant [15 x i8] c"set_ssl_option\00", align 1
@.str271 = private unnamed_addr constant [32 x i8] c"%s: cannot allocate mutexes: %s\00", align 1
@.str272 = private unnamed_addr constant [19 x i8] c"%s: cannot load %s\00", align 1
@__func__.load_dll = private unnamed_addr constant [9 x i8] c"load_dll\00", align 1
@.str273 = private unnamed_addr constant [23 x i8] c"%s: %s: cannot find %s\00", align 1
@.str274 = private unnamed_addr constant [19 x i8] c"Cannot open %s: %s\00", align 1
@fc.fake_connection = internal global %struct.mg_connection zeroinitializer, align 8
@.str275 = private unnamed_addr constant [30 x i8] c"[%010lu] [error] [client %s] \00", align 1
@.str276 = private unnamed_addr constant [8 x i8] c"%s %s: \00", align 1
@.str277 = private unnamed_addr constant [61 x i8] c"conn->request_len < 0 || conn->data_len >= conn->request_len\00", align 1
@__PRETTY_FUNCTION__.getreq = private unnamed_addr constant [51 x i8] c"int getreq(struct mg_connection *, char *, size_t)\00", align 1
@.str278 = private unnamed_addr constant [18 x i8] c"Request Too Large\00", align 1
@.str279 = private unnamed_addr constant [25 x i8] c"Client closed connection\00", align 1
@.str280 = private unnamed_addr constant [20 x i8] c"Bad request: [%.*s]\00", align 1
@.str281 = private unnamed_addr constant [6 x i8] c"HTTP/\00", align 1
@.str282 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str283 = private unnamed_addr constant [10 x i8] c"NULL host\00", align 1
@.str284 = private unnamed_addr constant [23 x i8] c"SSL is not initialized\00", align 1
@.str285 = private unnamed_addr constant [22 x i8] c"gethostbyname(%s): %s\00", align 1
@.str286 = private unnamed_addr constant [13 x i8] c"socket(): %s\00", align 1
@.str287 = private unnamed_addr constant [19 x i8] c"connect(%s:%d): %s\00", align 1
@.str288 = private unnamed_addr constant [9 x i8] c"SSL_free\00", align 1
@.str289 = private unnamed_addr constant [11 x i8] c"SSL_accept\00", align 1
@.str290 = private unnamed_addr constant [12 x i8] c"SSL_connect\00", align 1
@.str291 = private unnamed_addr constant [9 x i8] c"SSL_read\00", align 1
@.str292 = private unnamed_addr constant [10 x i8] c"SSL_write\00", align 1
@.str293 = private unnamed_addr constant [14 x i8] c"SSL_get_error\00", align 1
@.str294 = private unnamed_addr constant [11 x i8] c"SSL_set_fd\00", align 1
@.str295 = private unnamed_addr constant [8 x i8] c"SSL_new\00", align 1
@.str296 = private unnamed_addr constant [12 x i8] c"SSL_CTX_new\00", align 1
@.str297 = private unnamed_addr constant [21 x i8] c"SSLv23_server_method\00", align 1
@.str298 = private unnamed_addr constant [17 x i8] c"SSL_library_init\00", align 1
@.str299 = private unnamed_addr constant [28 x i8] c"SSL_CTX_use_PrivateKey_file\00", align 1
@.str300 = private unnamed_addr constant [29 x i8] c"SSL_CTX_use_certificate_file\00", align 1
@.str301 = private unnamed_addr constant [30 x i8] c"SSL_CTX_set_default_passwd_cb\00", align 1
@.str302 = private unnamed_addr constant [13 x i8] c"SSL_CTX_free\00", align 1
@.str303 = private unnamed_addr constant [23 x i8] c"SSL_load_error_strings\00", align 1
@.str304 = private unnamed_addr constant [35 x i8] c"SSL_CTX_use_certificate_chain_file\00", align 1
@.str305 = private unnamed_addr constant [21 x i8] c"SSLv23_client_method\00", align 1
@.str306 = private unnamed_addr constant [12 x i8] c"SSL_pending\00", align 1
@.str307 = private unnamed_addr constant [19 x i8] c"SSL_CTX_set_verify\00", align 1
@.str308 = private unnamed_addr constant [13 x i8] c"SSL_shutdown\00", align 1
@.str309 = private unnamed_addr constant [13 x i8] c"Error %d: %s\00", align 1
@.str310 = private unnamed_addr constant [55 x i8] c"HTTP/1.1 %d %s\0D\0AContent-Length: %d\0D\0AConnection: %s\0D\0A\0D\0A\00", align 1
@.str311 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str312 = private unnamed_addr constant [25 x i8] c"Content-Encoding: gzip\0D\0A\00", align 1
@.str313 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str314 = private unnamed_addr constant [50 x i8] c"range requests in gzipped files are not supported\00", align 1
@.str315 = private unnamed_addr constant [35 x i8] c"Content-Range: bytes %ld-%ld/%ld\0D\0A\00", align 1
@.str316 = private unnamed_addr constant [16 x i8] c"Partial Content\00", align 1
@.str317 = private unnamed_addr constant [143 x i8] c"HTTP/1.1 %d %s\0D\0ADate: %s\0D\0ALast-Modified: %s\0D\0AEtag: %s\0D\0AContent-Type: %.*s\0D\0AContent-Length: %ld\0D\0AConnection: %s\0D\0AAccept-Ranges: bytes\0D\0A%s%s%s\0D\0A\00", align 1
@bin2str.hex = internal global i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0), align 8
@is_big_endian.n = internal constant i32 1, align 4
@.str318 = private unnamed_addr constant [6 x i8] c".html\00", align 1
@.str319 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str320 = private unnamed_addr constant [5 x i8] c".htm\00", align 1
@.str321 = private unnamed_addr constant [6 x i8] c".shtm\00", align 1
@.str322 = private unnamed_addr constant [7 x i8] c".shtml\00", align 1
@.str323 = private unnamed_addr constant [5 x i8] c".css\00", align 1
@.str324 = private unnamed_addr constant [9 x i8] c"text/css\00", align 1
@.str325 = private unnamed_addr constant [4 x i8] c".js\00", align 1
@.str326 = private unnamed_addr constant [25 x i8] c"application/x-javascript\00", align 1
@.str327 = private unnamed_addr constant [5 x i8] c".ico\00", align 1
@.str328 = private unnamed_addr constant [13 x i8] c"image/x-icon\00", align 1
@.str329 = private unnamed_addr constant [5 x i8] c".gif\00", align 1
@.str330 = private unnamed_addr constant [10 x i8] c"image/gif\00", align 1
@.str331 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str332 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str333 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@.str334 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str335 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str336 = private unnamed_addr constant [5 x i8] c".svg\00", align 1
@.str337 = private unnamed_addr constant [14 x i8] c"image/svg+xml\00", align 1
@.str338 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str339 = private unnamed_addr constant [9 x i8] c".torrent\00", align 1
@.str340 = private unnamed_addr constant [25 x i8] c"application/x-bittorrent\00", align 1
@.str341 = private unnamed_addr constant [5 x i8] c".wav\00", align 1
@.str342 = private unnamed_addr constant [12 x i8] c"audio/x-wav\00", align 1
@.str343 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str344 = private unnamed_addr constant [12 x i8] c"audio/x-mp3\00", align 1
@.str345 = private unnamed_addr constant [5 x i8] c".mid\00", align 1
@.str346 = private unnamed_addr constant [10 x i8] c"audio/mid\00", align 1
@.str347 = private unnamed_addr constant [5 x i8] c".m3u\00", align 1
@.str348 = private unnamed_addr constant [16 x i8] c"audio/x-mpegurl\00", align 1
@.str349 = private unnamed_addr constant [5 x i8] c".ogg\00", align 1
@.str350 = private unnamed_addr constant [16 x i8] c"application/ogg\00", align 1
@.str351 = private unnamed_addr constant [5 x i8] c".ram\00", align 1
@.str352 = private unnamed_addr constant [21 x i8] c"audio/x-pn-realaudio\00", align 1
@.str353 = private unnamed_addr constant [5 x i8] c".xml\00", align 1
@.str354 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@.str355 = private unnamed_addr constant [6 x i8] c".json\00", align 1
@.str356 = private unnamed_addr constant [10 x i8] c"text/json\00", align 1
@.str357 = private unnamed_addr constant [6 x i8] c".xslt\00", align 1
@.str358 = private unnamed_addr constant [16 x i8] c"application/xml\00", align 1
@.str359 = private unnamed_addr constant [5 x i8] c".xsl\00", align 1
@.str360 = private unnamed_addr constant [4 x i8] c".ra\00", align 1
@.str361 = private unnamed_addr constant [5 x i8] c".doc\00", align 1
@.str362 = private unnamed_addr constant [19 x i8] c"application/msword\00", align 1
@.str363 = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@.str364 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@.str365 = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str366 = private unnamed_addr constant [29 x i8] c"application/x-zip-compressed\00", align 1
@.str367 = private unnamed_addr constant [5 x i8] c".xls\00", align 1
@.str368 = private unnamed_addr constant [18 x i8] c"application/excel\00", align 1
@.str369 = private unnamed_addr constant [5 x i8] c".tgz\00", align 1
@.str370 = private unnamed_addr constant [21 x i8] c"application/x-tar-gz\00", align 1
@.str371 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@.str372 = private unnamed_addr constant [18 x i8] c"application/x-tar\00", align 1
@.str373 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str374 = private unnamed_addr constant [21 x i8] c"application/x-gunzip\00", align 1
@.str375 = private unnamed_addr constant [5 x i8] c".arj\00", align 1
@.str376 = private unnamed_addr constant [29 x i8] c"application/x-arj-compressed\00", align 1
@.str377 = private unnamed_addr constant [5 x i8] c".rar\00", align 1
@.str378 = private unnamed_addr constant [5 x i8] c".rtf\00", align 1
@.str379 = private unnamed_addr constant [16 x i8] c"application/rtf\00", align 1
@.str380 = private unnamed_addr constant [5 x i8] c".pdf\00", align 1
@.str381 = private unnamed_addr constant [16 x i8] c"application/pdf\00", align 1
@.str382 = private unnamed_addr constant [5 x i8] c".swf\00", align 1
@.str383 = private unnamed_addr constant [30 x i8] c"application/x-shockwave-flash\00", align 1
@.str384 = private unnamed_addr constant [5 x i8] c".mpg\00", align 1
@.str385 = private unnamed_addr constant [11 x i8] c"video/mpeg\00", align 1
@.str386 = private unnamed_addr constant [6 x i8] c".webm\00", align 1
@.str387 = private unnamed_addr constant [11 x i8] c"video/webm\00", align 1
@.str388 = private unnamed_addr constant [6 x i8] c".mpeg\00", align 1
@.str389 = private unnamed_addr constant [5 x i8] c".mov\00", align 1
@.str390 = private unnamed_addr constant [16 x i8] c"video/quicktime\00", align 1
@.str391 = private unnamed_addr constant [5 x i8] c".mp4\00", align 1
@.str392 = private unnamed_addr constant [10 x i8] c"video/mp4\00", align 1
@.str393 = private unnamed_addr constant [5 x i8] c".m4v\00", align 1
@.str394 = private unnamed_addr constant [12 x i8] c"video/x-m4v\00", align 1
@.str395 = private unnamed_addr constant [5 x i8] c".asf\00", align 1
@.str396 = private unnamed_addr constant [15 x i8] c"video/x-ms-asf\00", align 1
@.str397 = private unnamed_addr constant [5 x i8] c".avi\00", align 1
@.str398 = private unnamed_addr constant [16 x i8] c"video/x-msvideo\00", align 1
@.str399 = private unnamed_addr constant [5 x i8] c".bmp\00", align 1
@.str400 = private unnamed_addr constant [10 x i8] c"image/bmp\00", align 1
@.str401 = private unnamed_addr constant [5 x i8] c".ttf\00", align 1
@.str402 = private unnamed_addr constant [23 x i8] c"application/x-font-ttf\00", align 1
@.str403 = private unnamed_addr constant [12 x i8] c"cgi_pattern\00", align 1
@.str404 = private unnamed_addr constant [23 x i8] c"**.cgi$|**.pl$|**.php$\00", align 1
@.str405 = private unnamed_addr constant [16 x i8] c"cgi_environment\00", align 1
@.str406 = private unnamed_addr constant [21 x i8] c"put_delete_auth_file\00", align 1
@.str407 = private unnamed_addr constant [16 x i8] c"cgi_interpreter\00", align 1
@.str408 = private unnamed_addr constant [12 x i8] c"protect_uri\00", align 1
@.str409 = private unnamed_addr constant [22 x i8] c"authentication_domain\00", align 1
@.str410 = private unnamed_addr constant [13 x i8] c"mydomain.com\00", align 1
@.str411 = private unnamed_addr constant [12 x i8] c"ssi_pattern\00", align 1
@.str412 = private unnamed_addr constant [19 x i8] c"**.shtml$|**.shtm$\00", align 1
@.str413 = private unnamed_addr constant [9 x i8] c"throttle\00", align 1
@.str414 = private unnamed_addr constant [16 x i8] c"access_log_file\00", align 1
@.str415 = private unnamed_addr constant [25 x i8] c"enable_directory_listing\00", align 1
@.str416 = private unnamed_addr constant [15 x i8] c"error_log_file\00", align 1
@.str417 = private unnamed_addr constant [17 x i8] c"global_auth_file\00", align 1
@.str418 = private unnamed_addr constant [12 x i8] c"index_files\00", align 1
@.str419 = private unnamed_addr constant [62 x i8] c"index.html,index.htm,index.cgi,index.shtml,index.php,index.lp\00", align 1
@.str420 = private unnamed_addr constant [18 x i8] c"enable_keep_alive\00", align 1
@.str421 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str422 = private unnamed_addr constant [20 x i8] c"access_control_list\00", align 1
@.str423 = private unnamed_addr constant [17 x i8] c"extra_mime_types\00", align 1
@.str424 = private unnamed_addr constant [16 x i8] c"listening_ports\00", align 1
@.str425 = private unnamed_addr constant [5 x i8] c"8080\00", align 1
@.str426 = private unnamed_addr constant [14 x i8] c"document_root\00", align 1
@.str427 = private unnamed_addr constant [16 x i8] c"ssl_certificate\00", align 1
@.str428 = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@.str429 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str430 = private unnamed_addr constant [12 x i8] c"run_as_user\00", align 1
@.str431 = private unnamed_addr constant [21 x i8] c"url_rewrite_patterns\00", align 1
@.str432 = private unnamed_addr constant [20 x i8] c"hide_files_patterns\00", align 1
@.str433 = private unnamed_addr constant [19 x i8] c"request_timeout_ms\00", align 1
@.str434 = private unnamed_addr constant [6 x i8] c"30000\00", align 1

; Function Attrs: nounwind uwtable
define i8** @mg_get_valid_option_names() #0 {
  ret i8** getelementptr inbounds ([49 x i8*]* @config_options, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @mg_get_option(%struct.mg_context* %ctx, i8* %name) #0 {
  %1 = call i32 @get_option_index(i8* %name)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %16

; <label>:4                                       ; preds = %0
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %7 = getelementptr inbounds [24 x i8*]* %6, i32 0, i64 %5
  %8 = load i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  br label %16

; <label>:11                                      ; preds = %4
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %14 = getelementptr inbounds [24 x i8*]* %13, i32 0, i64 %12
  %15 = load i8** %14, align 8
  br label %16

; <label>:16                                      ; preds = %11, %10, %3
  %.0 = phi i8* [ null, %3 ], [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %10 ], [ %15, %11 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @get_option_index(i8* %name) #0 {
  br label %1

; <label>:1                                       ; preds = %16, %0
  %i.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = mul nsw i32 %i.0, 2
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [49 x i8*]* @config_options, i32 0, i64 %3
  %5 = load i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %18

; <label>:7                                       ; preds = %1
  %8 = mul nsw i32 %i.0, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [49 x i8*]* @config_options, i32 0, i64 %9
  %11 = load i8** %10, align 8
  %12 = call i32 @strcmp(i8* %11, i8* %name) #3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %7
  br label %19

; <label>:15                                      ; preds = %7
  br label %16

; <label>:16                                      ; preds = %15
  %17 = add nsw i32 %i.0, 1
  br label %1

; <label>:18                                      ; preds = %1
  br label %19

; <label>:19                                      ; preds = %18, %14
  %.0 = phi i32 [ %i.0, %14 ], [ -1, %18 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i8* @mg_version() #0 {
  ret i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define %struct.mg_request_info* @mg_get_request_info(%struct.mg_connection* %conn) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  ret %struct.mg_request_info* %1
}

; Function Attrs: nounwind uwtable
define i8* @mg_get_header(%struct.mg_connection* %conn, i8* %name) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %2 = call i8* @get_header(%struct.mg_request_info* %1, i8* %name)
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal i8* @get_header(%struct.mg_request_info* %ri, i8* %name) #0 {
  br label %1

; <label>:1                                       ; preds = %20, %0
  %i.0 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %2 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 10
  %3 = load i32* %2, align 4
  %4 = icmp slt i32 %i.0, %3
  br i1 %4, label %5, label %22

; <label>:5                                       ; preds = %1
  %6 = sext i32 %i.0 to i64
  %7 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 11
  %8 = getelementptr inbounds [64 x %struct.mg_header]* %7, i32 0, i64 %6
  %9 = getelementptr inbounds %struct.mg_header* %8, i32 0, i32 0
  %10 = load i8** %9, align 8
  %11 = call i32 @mg_strcasecmp(i8* %name, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

; <label>:13                                      ; preds = %5
  %14 = sext i32 %i.0 to i64
  %15 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 11
  %16 = getelementptr inbounds [64 x %struct.mg_header]* %15, i32 0, i64 %14
  %17 = getelementptr inbounds %struct.mg_header* %16, i32 0, i32 1
  %18 = load i8** %17, align 8
  br label %23

; <label>:19                                      ; preds = %5
  br label %20

; <label>:20                                      ; preds = %19
  %21 = add nsw i32 %i.0, 1
  br label %1

; <label>:22                                      ; preds = %1
  br label %23

; <label>:23                                      ; preds = %22, %13
  %.0 = phi i8* [ %18, %13 ], [ null, %22 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i32 @mg_start_thread(i8* (i8*)* %func, i8* %param) #0 {
  %thread_id = alloca i64, align 8
  %attr = alloca %union.pthread_attr_t, align 8
  %1 = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) #1
  %2 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %attr, i32 1) #1
  %3 = call i32 @pthread_create(i64* %thread_id, %union.pthread_attr_t* %attr, i8* (i8*)* %func, i8* %param) #1
  %4 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attr) #1
  ret i32 %3
}

; Function Attrs: nounwind
declare i32 @pthread_attr_init(%union.pthread_attr_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_setdetachstate(%union.pthread_attr_t*, i32) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(%union.pthread_attr_t*) #1

; Function Attrs: nounwind uwtable
define i32 @mg_read(%struct.mg_connection* %conn, i8* %buf, i64 %len) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %2 = load i64* %1, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %11

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %6 = load i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  store i64 9223372036854775807, i64* %9, align 8
  %10 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 11
  store i32 1, i32* %10, align 4
  br label %11

; <label>:11                                      ; preds = %8, %4, %0
  %12 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %13 = load i64* %12, align 8
  %14 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %15 = load i64* %14, align 8
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %71

; <label>:17                                      ; preds = %11
  %18 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %19 = load i64* %18, align 8
  %20 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %21 = load i64* %20, align 8
  %22 = sub nsw i64 %19, %21
  %23 = icmp slt i64 %22, %len
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %17
  br label %25

; <label>:25                                      ; preds = %24, %17
  %.01 = phi i64 [ %22, %24 ], [ %len, %17 ]
  %26 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 9
  %27 = load i8** %26, align 8
  %28 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  %29 = load i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8* %27, i64 %30
  %32 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %33 = load i64* %32, align 8
  %34 = getelementptr inbounds i8* %31, i64 %33
  %35 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %36 = load i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 9
  %39 = load i8** %38, align 8
  %40 = getelementptr inbounds i8* %39, i64 %37
  %41 = ptrtoint i8* %40 to i64
  %42 = ptrtoint i8* %34 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %62

; <label>:46                                      ; preds = %25
  %47 = sext i32 %44 to i64
  %48 = icmp ult i64 %.01, %47
  br i1 %48, label %49, label %51

; <label>:49                                      ; preds = %46
  %50 = trunc i64 %.01 to i32
  br label %51

; <label>:51                                      ; preds = %49, %46
  %buffered_len.0 = phi i32 [ %50, %49 ], [ %44, %46 ]
  %52 = sext i32 %buffered_len.0 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* %34, i64 %52, i32 1, i1 false)
  %53 = sext i32 %buffered_len.0 to i64
  %54 = sub i64 %.01, %53
  %55 = sext i32 %buffered_len.0 to i64
  %56 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %57 = load i64* %56, align 8
  %58 = add nsw i64 %57, %55
  store i64 %58, i64* %56, align 8
  %59 = add nsw i32 0, %buffered_len.0
  %60 = sext i32 %buffered_len.0 to i64
  %61 = getelementptr inbounds i8* %buf, i64 %60
  br label %62

; <label>:62                                      ; preds = %51, %25
  %.1 = phi i64 [ %54, %51 ], [ %.01, %25 ]
  %.0 = phi i8* [ %61, %51 ], [ %buf, %25 ]
  %nread.0 = phi i32 [ %59, %51 ], [ 0, %25 ]
  %63 = trunc i64 %.1 to i32
  %64 = call i32 @pull_all(%struct._IO_FILE* null, %struct.mg_connection* %conn, i8* %.0, i32 %63)
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %68

; <label>:66                                      ; preds = %62
  %67 = add nsw i32 %nread.0, %64
  br label %69

; <label>:68                                      ; preds = %62
  br label %69

; <label>:69                                      ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ %64, %68 ]
  br label %71

; <label>:71                                      ; preds = %69, %11
  %nread.1 = phi i32 [ %70, %69 ], [ 0, %11 ]
  ret i32 %nread.1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @pull_all(%struct._IO_FILE* %fp, %struct.mg_connection* %conn, i8* %buf, i32 %len) #0 {
  br label %1

; <label>:1                                       ; preds = %28, %0
  %.0 = phi i32 [ %len, %0 ], [ %26, %28 ]
  %nread.0 = phi i32 [ 0, %0 ], [ %25, %28 ]
  %2 = icmp sgt i32 %.0, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %1
  %4 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %5 = load %struct.mg_context** %4, align 8
  %6 = getelementptr inbounds %struct.mg_context* %5, i32 0, i32 0
  %7 = load volatile i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br label %9

; <label>:9                                       ; preds = %3, %1
  %10 = phi i1 [ false, %1 ], [ %8, %3 ]
  br i1 %10, label %11, label %29

; <label>:11                                      ; preds = %9
  %12 = sext i32 %nread.0 to i64
  %13 = getelementptr inbounds i8* %buf, i64 %12
  %14 = call i32 @pull(%struct._IO_FILE* %fp, %struct.mg_connection* %conn, i8* %13, i32 %.0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %11
  br label %29

; <label>:17                                      ; preds = %11
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %17
  br label %29

; <label>:20                                      ; preds = %17
  %21 = sext i32 %14 to i64
  %22 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %23 = load i64* %22, align 8
  %24 = add nsw i64 %23, %21
  store i64 %24, i64* %22, align 8
  %25 = add nsw i32 %nread.0, %14
  %26 = sub nsw i32 %.0, %14
  br label %27

; <label>:27                                      ; preds = %20
  br label %28

; <label>:28                                      ; preds = %27
  br label %1

; <label>:29                                      ; preds = %19, %16, %9
  %nread.1 = phi i32 [ %14, %16 ], [ %nread.0, %19 ], [ %nread.0, %9 ]
  ret i32 %nread.1
}

; Function Attrs: nounwind uwtable
define i32 @mg_write(%struct.mg_connection* %conn, i8* %buf, i64 %len) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 16
  %2 = load i32* %1, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %75

; <label>:4                                       ; preds = %0
  %5 = call i64 @time(i64* null) #1
  %6 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 17
  %7 = load i64* %6, align 8
  %8 = icmp ne i64 %5, %7
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %4
  %10 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 17
  store i64 %5, i64* %10, align 8
  %11 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 18
  store i64 0, i64* %11, align 8
  br label %12

; <label>:12                                      ; preds = %9, %4
  %13 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 16
  %14 = load i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 18
  %17 = load i64* %16, align 8
  %18 = sub nsw i64 %15, %17
  %19 = icmp sgt i64 %18, %len
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %12
  br label %21

; <label>:21                                      ; preds = %20, %12
  %allowed.0 = phi i64 [ %len, %20 ], [ %18, %12 ]
  %22 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %23 = getelementptr inbounds %struct.socket* %22, i32 0, i32 0
  %24 = load i32* %23, align 4
  %25 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %26 = load %struct.ssl_st** %25, align 8
  %27 = call i64 @push(%struct._IO_FILE* null, i32 %24, %struct.ssl_st* %26, i8* %buf, i64 %allowed.0)
  %28 = icmp eq i64 %27, %allowed.0
  br i1 %28, label %29, label %74

; <label>:29                                      ; preds = %21
  %30 = getelementptr inbounds i8* %buf, i64 %27
  %31 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 18
  %32 = load i64* %31, align 8
  %33 = add nsw i64 %32, %27
  store i64 %33, i64* %31, align 8
  br label %34

; <label>:34                                      ; preds = %66, %29
  %total.0 = phi i64 [ %27, %29 ], [ %72, %66 ]
  %.0 = phi i8* [ %30, %29 ], [ %71, %66 ]
  %35 = icmp slt i64 %total.0, %len
  br i1 %35, label %36, label %42

; <label>:36                                      ; preds = %34
  %37 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %38 = load %struct.mg_context** %37, align 8
  %39 = getelementptr inbounds %struct.mg_context* %38, i32 0, i32 0
  %40 = load volatile i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br label %42

; <label>:42                                      ; preds = %36, %34
  %43 = phi i1 [ false, %34 ], [ %41, %36 ]
  br i1 %43, label %44, label %73

; <label>:44                                      ; preds = %42
  %45 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 16
  %46 = load i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %len, %total.0
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %52

; <label>:50                                      ; preds = %44
  %51 = sub nsw i64 %len, %total.0
  br label %56

; <label>:52                                      ; preds = %44
  %53 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 16
  %54 = load i32* %53, align 4
  %55 = sext i32 %54 to i64
  br label %56

; <label>:56                                      ; preds = %52, %50
  %57 = phi i64 [ %51, %50 ], [ %55, %52 ]
  %58 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %59 = getelementptr inbounds %struct.socket* %58, i32 0, i32 0
  %60 = load i32* %59, align 4
  %61 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %62 = load %struct.ssl_st** %61, align 8
  %63 = call i64 @push(%struct._IO_FILE* null, i32 %60, %struct.ssl_st* %62, i8* %.0, i64 %57)
  %64 = icmp ne i64 %63, %57
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %56
  br label %73

; <label>:66                                      ; preds = %56
  %67 = call i32 @sleep(i32 1)
  %68 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 18
  store i64 %57, i64* %68, align 8
  %69 = call i64 @time(i64* null) #1
  %70 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 17
  store i64 %69, i64* %70, align 8
  %71 = getelementptr inbounds i8* %.0, i64 %63
  %72 = add nsw i64 %total.0, %63
  br label %34

; <label>:73                                      ; preds = %65, %42
  br label %74

; <label>:74                                      ; preds = %73, %21
  %total.1 = phi i64 [ %total.0, %73 ], [ %27, %21 ]
  br label %82

; <label>:75                                      ; preds = %0
  %76 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %77 = getelementptr inbounds %struct.socket* %76, i32 0, i32 0
  %78 = load i32* %77, align 4
  %79 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %80 = load %struct.ssl_st** %79, align 8
  %81 = call i64 @push(%struct._IO_FILE* null, i32 %78, %struct.ssl_st* %80, i8* %buf, i64 %len)
  br label %82

; <label>:82                                      ; preds = %75, %74
  %total.2 = phi i64 [ %total.1, %74 ], [ %81, %75 ]
  %83 = trunc i64 %total.2 to i32
  ret i32 %83
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind uwtable
define internal i64 @push(%struct._IO_FILE* %fp, i32 %sock, %struct.ssl_st* %ssl, i8* %buf, i64 %len) #0 {
  br label %1

; <label>:1                                       ; preds = %38, %0
  %sent.0 = phi i64 [ 0, %0 ], [ %40, %38 ]
  %2 = icmp slt i64 %sent.0, %len
  br i1 %2, label %3, label %41

; <label>:3                                       ; preds = %1
  %4 = sub nsw i64 %len, %sent.0
  %5 = icmp sgt i64 %4, 2147483647
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %3
  br label %10

; <label>:7                                       ; preds = %3
  %8 = sub nsw i64 %len, %sent.0
  %9 = trunc i64 %8 to i32
  br label %10

; <label>:10                                      ; preds = %7, %6
  %11 = phi i32 [ 2147483647, %6 ], [ %9, %7 ]
  %12 = icmp ne %struct.ssl_st* %ssl, null
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %10
  %14 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 4, i32 1), align 8
  %15 = bitcast void ()* %14 to i32 (%struct.ssl_st*, i8*, i32)*
  %16 = getelementptr inbounds i8* %buf, i64 %sent.0
  %17 = call i32 %15(%struct.ssl_st* %ssl, i8* %16, i32 %11)
  br label %35

; <label>:18                                      ; preds = %10
  %19 = icmp ne %struct._IO_FILE* %fp, null
  br i1 %19, label %20, label %29

; <label>:20                                      ; preds = %18
  %21 = getelementptr inbounds i8* %buf, i64 %sent.0
  %22 = sext i32 %11 to i64
  %23 = call i64 @fwrite(i8* %21, i64 1, i64 %22, %struct._IO_FILE* %fp)
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ferror(%struct._IO_FILE* %fp) #1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %20
  br label %28

; <label>:28                                      ; preds = %27, %20
  %n.0 = phi i32 [ -1, %27 ], [ %24, %20 ]
  br label %34

; <label>:29                                      ; preds = %18
  %30 = getelementptr inbounds i8* %buf, i64 %sent.0
  %31 = sext i32 %11 to i64
  %32 = call i64 @send(i32 %sock, i8* %30, i64 %31, i32 16384)
  %33 = trunc i64 %32 to i32
  br label %34

; <label>:34                                      ; preds = %29, %28
  %n.1 = phi i32 [ %n.0, %28 ], [ %33, %29 ]
  br label %35

; <label>:35                                      ; preds = %34, %13
  %n.2 = phi i32 [ %17, %13 ], [ %n.1, %34 ]
  %36 = icmp sle i32 %n.2, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %35
  br label %41

; <label>:38                                      ; preds = %35
  %39 = sext i32 %n.2 to i64
  %40 = add nsw i64 %sent.0, %39
  br label %1

; <label>:41                                      ; preds = %37, %1
  ret i64 %sent.0
}

declare i32 @sleep(i32)

; Function Attrs: nounwind uwtable
define i32 @mg_vprintf(%struct.mg_connection* %conn, i8* %fmt, %struct.__va_list_tag* %ap) #0 {
  %mem = alloca [8192 x i8], align 16
  %buf = alloca i8*, align 8
  %1 = getelementptr inbounds [8192 x i8]* %mem, i32 0, i32 0
  store i8* %1, i8** %buf, align 8
  %2 = call i32 @alloc_vprintf(i8** %buf, i64 8192, i8* %fmt, %struct.__va_list_tag* %ap)
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load i8** %buf, align 8
  %6 = sext i32 %2 to i64
  %7 = call i32 @mg_write(%struct.mg_connection* %conn, i8* %5, i64 %6)
  br label %8

; <label>:8                                       ; preds = %4, %0
  %len.0 = phi i32 [ %7, %4 ], [ %2, %0 ]
  %9 = load i8** %buf, align 8
  %10 = getelementptr inbounds [8192 x i8]* %mem, i32 0, i32 0
  %11 = icmp ne i8* %9, %10
  br i1 %11, label %12, label %17

; <label>:12                                      ; preds = %8
  %13 = load i8** %buf, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %12
  %16 = load i8** %buf, align 8
  call void @free(i8* %16) #1
  br label %17

; <label>:17                                      ; preds = %15, %12, %8
  ret i32 %len.0
}

; Function Attrs: nounwind uwtable
define internal i32 @alloc_vprintf(i8** %buf, i64 %size, i8* %fmt, %struct.__va_list_tag* %ap) #0 {
  %ap_copy = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %2 = bitcast %struct.__va_list_tag* %1 to i8*
  %3 = bitcast %struct.__va_list_tag* %ap to i8*
  call void @llvm.va_copy(i8* %2, i8* %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %5 = call i32 @vsnprintf(i8* null, i64 0, i8* %fmt, %struct.__va_list_tag* %4) #1
  %6 = trunc i64 %size to i32
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %16

; <label>:8                                       ; preds = %0
  %9 = add nsw i32 %5, 1
  %10 = sext i32 %9 to i64
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %8
  %13 = call noalias i8* @malloc(i64 %10) #1
  store i8* %13, i8** %buf
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %12
  br label %23

; <label>:16                                      ; preds = %12, %8, %0
  %.0 = phi i64 [ %10, %12 ], [ %10, %8 ], [ %size, %0 ]
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  %19 = bitcast %struct.__va_list_tag* %ap to i8*
  call void @llvm.va_copy(i8* %18, i8* %19)
  %20 = load i8** %buf
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap_copy, i32 0, i32 0
  %22 = call i32 @vsnprintf(i8* %20, i64 %.0, i8* %fmt, %struct.__va_list_tag* %21) #1
  br label %23

; <label>:23                                      ; preds = %16, %15
  %len.0 = phi i32 [ -1, %15 ], [ %5, %16 ]
  ret i32 %len.0
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @mg_printf(%struct.mg_connection* %conn, i8* %fmt, ...) #0 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %2 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.va_start(i8* %2)
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %4 = call i32 @mg_vprintf(%struct.mg_connection* %conn, i8* %fmt, %struct.__va_list_tag* %3)
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @mg_chunked_printf(%struct.mg_connection* %conn, i8* %fmt, ...) #0 {
  %mem = alloca [8192 x i8], align 16
  %buf = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [8192 x i8]* %mem, i32 0, i32 0
  store i8* %1, i8** %buf, align 8
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %5 = call i32 @alloc_vprintf(i8** %buf, i64 8192, i8* %fmt, %struct.__va_list_tag* %4)
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load i8** %buf, align 8
  %9 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i32 %5, i8* %8)
  br label %10

; <label>:10                                      ; preds = %7, %0
  %len.0 = phi i32 [ %9, %7 ], [ %5, %0 ]
  %11 = load i8** %buf, align 8
  %12 = getelementptr inbounds [8192 x i8]* %mem, i32 0, i32 0
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %10
  %15 = load i8** %buf, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %14
  %18 = load i8** %buf, align 8
  call void @free(i8* %18) #1
  br label %19

; <label>:19                                      ; preds = %17, %14, %10
  ret i32 %len.0
}

; Function Attrs: nounwind uwtable
define i32 @mg_url_decode(i8* %src, i32 %src_len, i8* %dst, i32 %dst_len, i32 %is_form_url_encoded) #0 {
  br label %1

; <label>:1                                       ; preds = %111, %0
  %i.0 = phi i32 [ 0, %0 ], [ %112, %111 ]
  %j.0 = phi i32 [ 0, %0 ], [ %113, %111 ]
  %2 = icmp slt i32 %i.0, %src_len
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %1
  %4 = sub nsw i32 %dst_len, 1
  %5 = icmp slt i32 %j.0, %4
  br label %6

; <label>:6                                       ; preds = %3, %1
  %7 = phi i1 [ false, %1 ], [ %5, %3 ]
  br i1 %7, label %8, label %114

; <label>:8                                       ; preds = %6
  %9 = sext i32 %i.0 to i64
  %10 = getelementptr inbounds i8* %src, i64 %9
  %11 = load i8* %10
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %92

; <label>:14                                      ; preds = %8
  %15 = sub nsw i32 %src_len, 2
  %16 = icmp slt i32 %i.0, %15
  br i1 %16, label %17, label %92

; <label>:17                                      ; preds = %14
  %18 = sext i32 %i.0 to i64
  %19 = getelementptr inbounds i8* %src, i64 %18
  %20 = getelementptr inbounds i8* %19, i64 1
  %21 = load i8* %20
  %22 = zext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = call i16** @__ctype_b_loc() #2
  %25 = load i16** %24
  %26 = getelementptr inbounds i16* %25, i64 %23
  %27 = load i16* %26
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 4096
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %92

; <label>:31                                      ; preds = %17
  %32 = sext i32 %i.0 to i64
  %33 = getelementptr inbounds i8* %src, i64 %32
  %34 = getelementptr inbounds i8* %33, i64 2
  %35 = load i8* %34
  %36 = zext i8 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = call i16** @__ctype_b_loc() #2
  %39 = load i16** %38
  %40 = getelementptr inbounds i16* %39, i64 %37
  %41 = load i16* %40
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 4096
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %92

; <label>:45                                      ; preds = %31
  %46 = sext i32 %i.0 to i64
  %47 = getelementptr inbounds i8* %src, i64 %46
  %48 = getelementptr inbounds i8* %47, i64 1
  %49 = load i8* %48
  %50 = zext i8 %49 to i32
  %51 = call i32 @tolower(i32 %50) #1
  %52 = sext i32 %i.0 to i64
  %53 = getelementptr inbounds i8* %src, i64 %52
  %54 = getelementptr inbounds i8* %53, i64 2
  %55 = load i8* %54
  %56 = zext i8 %55 to i32
  %57 = call i32 @tolower(i32 %56) #1
  %58 = sext i32 %51 to i64
  %59 = call i16** @__ctype_b_loc() #2
  %60 = load i16** %59
  %61 = getelementptr inbounds i16* %60, i64 %58
  %62 = load i16* %61
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 2048
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

; <label>:66                                      ; preds = %45
  %67 = sub nsw i32 %51, 48
  br label %70

; <label>:68                                      ; preds = %45
  %69 = sub nsw i32 %51, 87
  br label %70

; <label>:70                                      ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = shl i32 %71, 4
  %73 = sext i32 %57 to i64
  %74 = call i16** @__ctype_b_loc() #2
  %75 = load i16** %74
  %76 = getelementptr inbounds i16* %75, i64 %73
  %77 = load i16* %76
  %78 = zext i16 %77 to i32
  %79 = and i32 %78, 2048
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

; <label>:81                                      ; preds = %70
  %82 = sub nsw i32 %57, 48
  br label %85

; <label>:83                                      ; preds = %70
  %84 = sub nsw i32 %57, 87
  br label %85

; <label>:85                                      ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = or i32 %72, %86
  %88 = trunc i32 %87 to i8
  %89 = sext i32 %j.0 to i64
  %90 = getelementptr inbounds i8* %dst, i64 %89
  store i8 %88, i8* %90
  %91 = add nsw i32 %i.0, 2
  br label %110

; <label>:92                                      ; preds = %31, %17, %14, %8
  %93 = icmp ne i32 %is_form_url_encoded, 0
  br i1 %93, label %94, label %103

; <label>:94                                      ; preds = %92
  %95 = sext i32 %i.0 to i64
  %96 = getelementptr inbounds i8* %src, i64 %95
  %97 = load i8* %96
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 43
  br i1 %99, label %100, label %103

; <label>:100                                     ; preds = %94
  %101 = sext i32 %j.0 to i64
  %102 = getelementptr inbounds i8* %dst, i64 %101
  store i8 32, i8* %102
  br label %109

; <label>:103                                     ; preds = %94, %92
  %104 = sext i32 %i.0 to i64
  %105 = getelementptr inbounds i8* %src, i64 %104
  %106 = load i8* %105
  %107 = sext i32 %j.0 to i64
  %108 = getelementptr inbounds i8* %dst, i64 %107
  store i8 %106, i8* %108
  br label %109

; <label>:109                                     ; preds = %103, %100
  br label %110

; <label>:110                                     ; preds = %109, %85
  %i.1 = phi i32 [ %91, %85 ], [ %i.0, %109 ]
  br label %111

; <label>:111                                     ; preds = %110
  %112 = add nsw i32 %i.1, 1
  %113 = add nsw i32 %j.0, 1
  br label %1

; <label>:114                                     ; preds = %6
  %115 = sext i32 %j.0 to i64
  %116 = getelementptr inbounds i8* %dst, i64 %115
  store i8 0, i8* %116
  %117 = icmp sge i32 %i.0, %src_len
  br i1 %117, label %118, label %119

; <label>:118                                     ; preds = %114
  br label %120

; <label>:119                                     ; preds = %114
  br label %120

; <label>:120                                     ; preds = %119, %118
  %121 = phi i32 [ %j.0, %118 ], [ -1, %119 ]
  ret i32 %121
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: nounwind uwtable
define i32 @mg_get_var(i8* %data, i64 %data_len, i8* %name, i8* %dst, i64 %dst_len) #0 {
  %1 = icmp eq i8* %dst, null
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp eq i64 %dst_len, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %2, %0
  br label %64

; <label>:5                                       ; preds = %2
  %6 = icmp eq i8* %data, null
  br i1 %6, label %11, label %7

; <label>:7                                       ; preds = %5
  %8 = icmp eq i8* %name, null
  br i1 %8, label %11, label %9

; <label>:9                                       ; preds = %7
  %10 = icmp eq i64 %data_len, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %9, %7, %5
  %12 = getelementptr inbounds i8* %dst, i64 0
  store i8 0, i8* %12
  br label %63

; <label>:13                                      ; preds = %9
  %14 = call i64 @strlen(i8* %name) #3
  %15 = getelementptr inbounds i8* %data, i64 %data_len
  %16 = getelementptr inbounds i8* %dst, i64 0
  store i8 0, i8* %16
  br label %17

; <label>:17                                      ; preds = %60, %13
  %p.0 = phi i8* [ %data, %13 ], [ %61, %60 ]
  %18 = getelementptr inbounds i8* %p.0, i64 %14
  %19 = icmp ult i8* %18, %15
  br i1 %19, label %20, label %62

; <label>:20                                      ; preds = %17
  %21 = icmp eq i8* %p.0, %data
  br i1 %21, label %27, label %22

; <label>:22                                      ; preds = %20
  %23 = getelementptr inbounds i8* %p.0, i64 -1
  %24 = load i8* %23
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 38
  br i1 %26, label %27, label %59

; <label>:27                                      ; preds = %22, %20
  %28 = getelementptr inbounds i8* %p.0, i64 %14
  %29 = load i8* %28
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 61
  br i1 %31, label %32, label %59

; <label>:32                                      ; preds = %27
  %33 = call i32 @mg_strncasecmp(i8* %name, i8* %p.0, i64 %14)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %59, label %35

; <label>:35                                      ; preds = %32
  %36 = add i64 %14, 1
  %37 = getelementptr inbounds i8* %p.0, i64 %36
  %38 = ptrtoint i8* %15 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = call i8* @memchr(i8* %37, i32 38, i64 %40) #3
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %35
  br label %44

; <label>:44                                      ; preds = %43, %35
  %s.0 = phi i8* [ %15, %43 ], [ %41, %35 ]
  %45 = icmp uge i8* %s.0, %37
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %44
  br label %49

; <label>:47                                      ; preds = %44
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 1749, i8* getelementptr inbounds ([67 x i8]* @__PRETTY_FUNCTION__.mg_get_var, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %49

; <label>:49                                      ; preds = %48, %46
  %50 = ptrtoint i8* %s.0 to i64
  %51 = ptrtoint i8* %37 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = trunc i64 %dst_len to i32
  %55 = call i32 @mg_url_decode(i8* %37, i32 %53, i8* %dst, i32 %54, i32 1)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %49
  br label %58

; <label>:58                                      ; preds = %57, %49
  %len.0 = phi i32 [ -2, %57 ], [ %55, %49 ]
  br label %62

; <label>:59                                      ; preds = %32, %27, %22
  br label %60

; <label>:60                                      ; preds = %59
  %61 = getelementptr inbounds i8* %p.0, i32 1
  br label %17

; <label>:62                                      ; preds = %58, %17
  %len.1 = phi i32 [ %len.0, %58 ], [ -1, %17 ]
  br label %63

; <label>:63                                      ; preds = %62, %11
  %len.2 = phi i32 [ -1, %11 ], [ %len.1, %62 ]
  br label %64

; <label>:64                                      ; preds = %63, %4
  %len.3 = phi i32 [ -2, %4 ], [ %len.2, %63 ]
  ret i32 %len.3
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @mg_strncasecmp(i8* %s1, i8* %s2, i64 %len) #0 {
  %1 = icmp ugt i64 %len, 0
  br i1 %1, label %2, label %22

; <label>:2                                       ; preds = %0
  br label %3

; <label>:3                                       ; preds = %19, %2
  %.02 = phi i64 [ %len, %2 ], [ %.1, %19 ]
  %.01 = phi i8* [ %s2, %2 ], [ %6, %19 ]
  %.0 = phi i8* [ %s1, %2 ], [ %4, %19 ]
  %4 = getelementptr inbounds i8* %.0, i32 1
  %5 = call i32 @lowercase(i8* %.0)
  %6 = getelementptr inbounds i8* %.01, i32 1
  %7 = call i32 @lowercase(i8* %.01)
  %8 = sub nsw i32 %5, %7
  br label %9

; <label>:9                                       ; preds = %3
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %19

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds i8* %4, i64 -1
  %13 = load i8* %12
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %11
  %17 = add i64 %.02, -1
  %18 = icmp ugt i64 %17, 0
  br label %19

; <label>:19                                      ; preds = %16, %11, %9
  %.1 = phi i64 [ %17, %16 ], [ %.02, %11 ], [ %.02, %9 ]
  %20 = phi i1 [ false, %11 ], [ false, %9 ], [ %18, %16 ]
  br i1 %20, label %3, label %21

; <label>:21                                      ; preds = %19
  br label %22

; <label>:22                                      ; preds = %21, %0
  %diff.0 = phi i32 [ %8, %21 ], [ 0, %0 ]
  ret i32 %diff.0
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @mg_get_cookie(i8* %cookie_header, i8* %var_name, i8* %dst, i64 %dst_size) #0 {
  %1 = icmp eq i8* %dst, null
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp eq i64 %dst_size, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %2, %0
  br label %75

; <label>:5                                       ; preds = %2
  %6 = icmp eq i8* %var_name, null
  br i1 %6, label %9, label %7

; <label>:7                                       ; preds = %5
  %8 = icmp eq i8* %cookie_header, null
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %7, %5
  %10 = getelementptr inbounds i8* %dst, i64 0
  store i8 0, i8* %10
  br label %74

; <label>:11                                      ; preds = %7
  %12 = call i64 @strlen(i8* %var_name) #3
  %13 = trunc i64 %12 to i32
  %14 = call i64 @strlen(i8* %cookie_header) #3
  %15 = getelementptr inbounds i8* %cookie_header, i64 %14
  %16 = getelementptr inbounds i8* %dst, i64 0
  store i8 0, i8* %16
  br label %17

; <label>:17                                      ; preds = %70, %11
  %s.0 = phi i8* [ %cookie_header, %11 ], [ %72, %70 ]
  %18 = call i8* @mg_strcasestr(i8* %s.0, i8* %var_name)
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %73

; <label>:20                                      ; preds = %17
  %21 = sext i32 %13 to i64
  %22 = getelementptr inbounds i8* %18, i64 %21
  %23 = load i8* %22
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 61
  br i1 %25, label %26, label %69

; <label>:26                                      ; preds = %20
  %27 = add nsw i32 %13, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8* %18, i64 %28
  %30 = call i8* @strchr(i8* %29, i32 32) #3
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %26
  br label %33

; <label>:33                                      ; preds = %32, %26
  %p.0 = phi i8* [ %15, %32 ], [ %30, %26 ]
  %34 = getelementptr inbounds i8* %p.0, i64 -1
  %35 = load i8* %34
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 59
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %33
  %39 = getelementptr inbounds i8* %p.0, i32 -1
  br label %40

; <label>:40                                      ; preds = %38, %33
  %p.1 = phi i8* [ %39, %38 ], [ %p.0, %33 ]
  %41 = load i8* %29
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 34
  br i1 %43, label %44, label %55

; <label>:44                                      ; preds = %40
  %45 = getelementptr inbounds i8* %p.1, i64 -1
  %46 = load i8* %45
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 34
  br i1 %48, label %49, label %55

; <label>:49                                      ; preds = %44
  %50 = getelementptr inbounds i8* %29, i64 1
  %51 = icmp ugt i8* %p.1, %50
  br i1 %51, label %52, label %55

; <label>:52                                      ; preds = %49
  %53 = getelementptr inbounds i8* %29, i32 1
  %54 = getelementptr inbounds i8* %p.1, i32 -1
  br label %55

; <label>:55                                      ; preds = %52, %49, %44, %40
  %s.1 = phi i8* [ %53, %52 ], [ %29, %49 ], [ %29, %44 ], [ %29, %40 ]
  %p.2 = phi i8* [ %54, %52 ], [ %p.1, %49 ], [ %p.1, %44 ], [ %p.1, %40 ]
  %56 = ptrtoint i8* %p.2 to i64
  %57 = ptrtoint i8* %s.1 to i64
  %58 = sub i64 %56, %57
  %59 = icmp ult i64 %58, %dst_size
  br i1 %59, label %60, label %67

; <label>:60                                      ; preds = %55
  %61 = ptrtoint i8* %p.2 to i64
  %62 = ptrtoint i8* %s.1 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 1
  call void @mg_strlcpy(i8* %dst, i8* %s.1, i64 %66)
  br label %68

; <label>:67                                      ; preds = %55
  br label %68

; <label>:68                                      ; preds = %67, %60
  %len.0 = phi i32 [ %64, %60 ], [ -3, %67 ]
  br label %73

; <label>:69                                      ; preds = %20
  br label %70

; <label>:70                                      ; preds = %69
  %71 = sext i32 %13 to i64
  %72 = getelementptr inbounds i8* %18, i64 %71
  br label %17

; <label>:73                                      ; preds = %68, %17
  %len.1 = phi i32 [ %len.0, %68 ], [ -1, %17 ]
  br label %74

; <label>:74                                      ; preds = %73, %9
  %len.2 = phi i32 [ -1, %9 ], [ %len.1, %73 ]
  br label %75

; <label>:75                                      ; preds = %74, %4
  %len.3 = phi i32 [ -2, %4 ], [ %len.2, %74 ]
  ret i32 %len.3
}

; Function Attrs: nounwind uwtable
define internal i8* @mg_strcasestr(i8* %big_str, i8* %small_str) #0 {
  %1 = call i64 @strlen(i8* %big_str) #3
  %2 = trunc i64 %1 to i32
  %3 = call i64 @strlen(i8* %small_str) #3
  %4 = trunc i64 %3 to i32
  br label %5

; <label>:5                                       ; preds = %18, %0
  %i.0 = phi i32 [ 0, %0 ], [ %19, %18 ]
  %6 = sub nsw i32 %2, %4
  %7 = icmp sle i32 %i.0, %6
  br i1 %7, label %8, label %20

; <label>:8                                       ; preds = %5
  %9 = sext i32 %i.0 to i64
  %10 = getelementptr inbounds i8* %big_str, i64 %9
  %11 = sext i32 %4 to i64
  %12 = call i32 @mg_strncasecmp(i8* %10, i8* %small_str, i64 %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8
  %15 = sext i32 %i.0 to i64
  %16 = getelementptr inbounds i8* %big_str, i64 %15
  br label %21

; <label>:17                                      ; preds = %8
  br label %18

; <label>:18                                      ; preds = %17
  %19 = add nsw i32 %i.0, 1
  br label %5

; <label>:20                                      ; preds = %5
  br label %21

; <label>:21                                      ; preds = %20, %14
  %.0 = phi i8* [ %16, %14 ], [ null, %20 ]
  ret i8* %.0
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @mg_strlcpy(i8* %dst, i8* %src, i64 %n) #0 {
  br label %1

; <label>:1                                       ; preds = %13, %0
  %.02 = phi i64 [ %n, %0 ], [ %14, %13 ]
  %.01 = phi i8* [ %src, %0 ], [ %10, %13 ]
  %.0 = phi i8* [ %dst, %0 ], [ %12, %13 ]
  %2 = load i8* %.01
  %3 = sext i8 %2 to i32
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %1
  %6 = icmp ugt i64 %.02, 1
  br label %7

; <label>:7                                       ; preds = %5, %1
  %8 = phi i1 [ false, %1 ], [ %6, %5 ]
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %7
  %10 = getelementptr inbounds i8* %.01, i32 1
  %11 = load i8* %.01
  %12 = getelementptr inbounds i8* %.0, i32 1
  store i8 %11, i8* %.0
  br label %13

; <label>:13                                      ; preds = %9
  %14 = add i64 %.02, -1
  br label %1

; <label>:15                                      ; preds = %7
  store i8 0, i8* %.0
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @mg_get_builtin_mime_type(i8* %path) #0 {
  %1 = call i64 @strlen(i8* %path) #3
  br label %2

; <label>:2                                       ; preds = %28, %0
  %i.0 = phi i64 [ 0, %0 ], [ %29, %28 ]
  %3 = getelementptr inbounds [48 x %struct.anon.0]* @builtin_mime_types, i32 0, i64 %i.0
  %4 = getelementptr inbounds %struct.anon.0* %3, i32 0, i32 0
  %5 = load i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %30

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds [48 x %struct.anon.0]* @builtin_mime_types, i32 0, i64 %i.0
  %9 = getelementptr inbounds %struct.anon.0* %8, i32 0, i32 1
  %10 = load i64* %9, align 8
  %11 = sub i64 %1, %10
  %12 = getelementptr inbounds i8* %path, i64 %11
  %13 = getelementptr inbounds [48 x %struct.anon.0]* @builtin_mime_types, i32 0, i64 %i.0
  %14 = getelementptr inbounds %struct.anon.0* %13, i32 0, i32 1
  %15 = load i64* %14, align 8
  %16 = icmp ugt i64 %1, %15
  br i1 %16, label %17, label %27

; <label>:17                                      ; preds = %7
  %18 = getelementptr inbounds [48 x %struct.anon.0]* @builtin_mime_types, i32 0, i64 %i.0
  %19 = getelementptr inbounds %struct.anon.0* %18, i32 0, i32 0
  %20 = load i8** %19, align 8
  %21 = call i32 @mg_strcasecmp(i8* %12, i8* %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

; <label>:23                                      ; preds = %17
  %24 = getelementptr inbounds [48 x %struct.anon.0]* @builtin_mime_types, i32 0, i64 %i.0
  %25 = getelementptr inbounds %struct.anon.0* %24, i32 0, i32 2
  %26 = load i8** %25, align 8
  br label %31

; <label>:27                                      ; preds = %17, %7
  br label %28

; <label>:28                                      ; preds = %27
  %29 = add i64 %i.0, 1
  br label %2

; <label>:30                                      ; preds = %2
  br label %31

; <label>:31                                      ; preds = %30, %23
  %.0 = phi i8* [ %26, %23 ], [ getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0), %30 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @mg_strcasecmp(i8* %s1, i8* %s2) #0 {
  br label %1

; <label>:1                                       ; preds = %14, %0
  %.01 = phi i8* [ %s2, %0 ], [ %4, %14 ]
  %.0 = phi i8* [ %s1, %0 ], [ %2, %14 ]
  %2 = getelementptr inbounds i8* %.0, i32 1
  %3 = call i32 @lowercase(i8* %.0)
  %4 = getelementptr inbounds i8* %.01, i32 1
  %5 = call i32 @lowercase(i8* %.01)
  %6 = sub nsw i32 %3, %5
  br label %7

; <label>:7                                       ; preds = %1
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %7
  %10 = getelementptr inbounds i8* %2, i64 -1
  %11 = load i8* %10
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br label %14

; <label>:14                                      ; preds = %9, %7
  %15 = phi i1 [ false, %7 ], [ %13, %9 ]
  br i1 %15, label %1, label %16

; <label>:16                                      ; preds = %14
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i8* @mg_md5(i8* %buf, ...) #0 {
  %hash = alloca [16 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %ctx = alloca %struct.MD5Context, align 4
  call void @MD5Init(%struct.MD5Context* %ctx)
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %2 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.va_start(i8* %2)
  br label %3

; <label>:3                                       ; preds = %23, %0
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %5 = getelementptr inbounds %struct.__va_list_tag* %4, i32 0, i32 0
  %6 = load i32* %5
  %7 = icmp ule i32 %6, 40
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %3
  %9 = getelementptr inbounds %struct.__va_list_tag* %4, i32 0, i32 3
  %10 = load i8** %9
  %11 = getelementptr i8* %10, i32 %6
  %12 = bitcast i8* %11 to i8**
  %13 = add i32 %6, 8
  store i32 %13, i32* %5
  br label %19

; <label>:14                                      ; preds = %3
  %15 = getelementptr inbounds %struct.__va_list_tag* %4, i32 0, i32 2
  %16 = load i8** %15
  %17 = bitcast i8* %16 to i8**
  %18 = getelementptr i8* %16, i32 8
  store i8* %18, i8** %15
  br label %19

; <label>:19                                      ; preds = %14, %8
  %20 = phi i8** [ %12, %8 ], [ %17, %14 ]
  %21 = load i8** %20
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %19
  %24 = call i64 @strlen(i8* %21) #3
  %25 = trunc i64 %24 to i32
  call void @MD5Update(%struct.MD5Context* %ctx, i8* %21, i32 %25)
  br label %3

; <label>:26                                      ; preds = %19
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %28 = bitcast %struct.__va_list_tag* %27 to i8*
  call void @llvm.va_end(i8* %28)
  %29 = getelementptr inbounds [16 x i8]* %hash, i32 0, i32 0
  call void @MD5Final(i8* %29, %struct.MD5Context* %ctx)
  %30 = getelementptr inbounds [16 x i8]* %hash, i32 0, i32 0
  call void @bin2str(i8* %buf, i8* %30, i64 16)
  ret i8* %buf
}

; Function Attrs: nounwind uwtable
define internal void @MD5Init(%struct.MD5Context* %ctx) #0 {
  %1 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 0
  %2 = getelementptr inbounds [4 x i32]* %1, i32 0, i64 0
  store i32 1732584193, i32* %2, align 4
  %3 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 0
  %4 = getelementptr inbounds [4 x i32]* %3, i32 0, i64 1
  store i32 -271733879, i32* %4, align 4
  %5 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 0
  %6 = getelementptr inbounds [4 x i32]* %5, i32 0, i64 2
  store i32 -1732584194, i32* %6, align 4
  %7 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 0
  %8 = getelementptr inbounds [4 x i32]* %7, i32 0, i64 3
  store i32 271733878, i32* %8, align 4
  %9 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 1
  %10 = getelementptr inbounds [2 x i32]* %9, i32 0, i64 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 1
  %12 = getelementptr inbounds [2 x i32]* %11, i32 0, i64 1
  store i32 0, i32* %12, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MD5Update(%struct.MD5Context* %ctx, i8* %buf, i32 %len) #0 {
  %1 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 1
  %2 = getelementptr inbounds [2 x i32]* %1, i32 0, i64 0
  %3 = load i32* %2, align 4
  %4 = shl i32 %len, 3
  %5 = add i32 %3, %4
  %6 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 1
  %7 = getelementptr inbounds [2 x i32]* %6, i32 0, i64 0
  store i32 %5, i32* %7, align 4
  %8 = icmp ult i32 %5, %3
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 1
  %11 = getelementptr inbounds [2 x i32]* %10, i32 0, i64 1
  %12 = load i32* %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %11, align 4
  br label %14

; <label>:14                                      ; preds = %9, %0
  %15 = lshr i32 %len, 29
  %16 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 1
  %17 = getelementptr inbounds [2 x i32]* %16, i32 0, i64 1
  %18 = load i32* %17, align 4
  %19 = add i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = lshr i32 %3, 3
  %21 = and i32 %20, 63
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

; <label>:23                                      ; preds = %14
  %24 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %25 = getelementptr inbounds [64 x i8]* %24, i32 0, i32 0
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i8* %25, i64 %26
  %28 = sub i32 64, %21
  %29 = icmp ult i32 %len, %28
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %23
  %31 = zext i32 %len to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %buf, i64 %31, i32 1, i1 false)
  br label %63

; <label>:32                                      ; preds = %23
  %33 = zext i32 %28 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %buf, i64 %33, i32 1, i1 false)
  %34 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %35 = getelementptr inbounds [64 x i8]* %34, i32 0, i32 0
  call void @byteReverse(i8* %35, i32 16)
  %36 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 0
  %37 = getelementptr inbounds [4 x i32]* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %39 = getelementptr inbounds [64 x i8]* %38, i32 0, i32 0
  %40 = bitcast i8* %39 to i32*
  call void @MD5Transform(i32* %37, i32* %40)
  %41 = zext i32 %28 to i64
  %42 = getelementptr inbounds i8* %buf, i64 %41
  %43 = sub i32 %len, %28
  br label %44

; <label>:44                                      ; preds = %32, %14
  %.01 = phi i32 [ %43, %32 ], [ %len, %14 ]
  %.0 = phi i8* [ %42, %32 ], [ %buf, %14 ]
  br label %45

; <label>:45                                      ; preds = %47, %44
  %.12 = phi i32 [ %.01, %44 ], [ %58, %47 ]
  %.1 = phi i8* [ %.0, %44 ], [ %57, %47 ]
  %46 = icmp uge i32 %.12, 64
  br i1 %46, label %47, label %59

; <label>:47                                      ; preds = %45
  %48 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %49 = getelementptr inbounds [64 x i8]* %48, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %.1, i64 64, i32 1, i1 false)
  %50 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %51 = getelementptr inbounds [64 x i8]* %50, i32 0, i32 0
  call void @byteReverse(i8* %51, i32 16)
  %52 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 0
  %53 = getelementptr inbounds [4 x i32]* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %55 = getelementptr inbounds [64 x i8]* %54, i32 0, i32 0
  %56 = bitcast i8* %55 to i32*
  call void @MD5Transform(i32* %53, i32* %56)
  %57 = getelementptr inbounds i8* %.1, i64 64
  %58 = sub i32 %.12, 64
  br label %45

; <label>:59                                      ; preds = %45
  %60 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %61 = getelementptr inbounds [64 x i8]* %60, i32 0, i32 0
  %62 = zext i32 %.12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %.1, i64 %62, i32 1, i1 false)
  br label %63

; <label>:63                                      ; preds = %59, %30
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @MD5Final(i8* %digest, %struct.MD5Context* %ctx) #0 {
  %1 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 1
  %2 = getelementptr inbounds [2 x i32]* %1, i32 0, i64 0
  %3 = load i32* %2, align 4
  %4 = lshr i32 %3, 3
  %5 = and i32 %4, 63
  %6 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %7 = getelementptr inbounds [64 x i8]* %6, i32 0, i32 0
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds i8* %7, i64 %8
  %10 = getelementptr inbounds i8* %9, i32 1
  store i8 -128, i8* %9
  %11 = sub i32 63, %5
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %13, label %24

; <label>:13                                      ; preds = %0
  %14 = zext i32 %11 to i64
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %14, i32 1, i1 false)
  %15 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %16 = getelementptr inbounds [64 x i8]* %15, i32 0, i32 0
  call void @byteReverse(i8* %16, i32 16)
  %17 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 0
  %18 = getelementptr inbounds [4 x i32]* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %20 = getelementptr inbounds [64 x i8]* %19, i32 0, i32 0
  %21 = bitcast i8* %20 to i32*
  call void @MD5Transform(i32* %18, i32* %21)
  %22 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %23 = getelementptr inbounds [64 x i8]* %22, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 56, i32 1, i1 false)
  br label %27

; <label>:24                                      ; preds = %0
  %25 = sub i32 %11, 8
  %26 = zext i32 %25 to i64
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %26, i32 1, i1 false)
  br label %27

; <label>:27                                      ; preds = %24, %13
  %28 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %29 = getelementptr inbounds [64 x i8]* %28, i32 0, i32 0
  call void @byteReverse(i8* %29, i32 14)
  %30 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %31 = getelementptr inbounds [64 x i8]* %30, i32 0, i32 0
  %32 = bitcast i8* %31 to i32*
  %33 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 1
  %34 = getelementptr inbounds [2 x i32]* %33, i32 0, i64 0
  %35 = load i32* %34, align 4
  %36 = getelementptr inbounds i32* %32, i64 14
  store i32 %35, i32* %36
  %37 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 1
  %38 = getelementptr inbounds [2 x i32]* %37, i32 0, i64 1
  %39 = load i32* %38, align 4
  %40 = getelementptr inbounds i32* %32, i64 15
  store i32 %39, i32* %40
  %41 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 0
  %42 = getelementptr inbounds [4 x i32]* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 2
  %44 = getelementptr inbounds [64 x i8]* %43, i32 0, i32 0
  %45 = bitcast i8* %44 to i32*
  call void @MD5Transform(i32* %42, i32* %45)
  %46 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 0
  %47 = getelementptr inbounds [4 x i32]* %46, i32 0, i32 0
  %48 = bitcast i32* %47 to i8*
  call void @byteReverse(i8* %48, i32 4)
  %49 = getelementptr inbounds %struct.MD5Context* %ctx, i32 0, i32 0
  %50 = getelementptr inbounds [4 x i32]* %49, i32 0, i32 0
  %51 = bitcast i32* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %digest, i8* %51, i64 16, i32 1, i1 false)
  %52 = bitcast %struct.MD5Context* %ctx to i8*
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 88, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bin2str(i8* %to, i8* %p, i64 %len) #0 {
  br label %1

; <label>:1                                       ; preds = %23, %0
  %.02 = phi i64 [ %len, %0 ], [ %2, %23 ]
  %.01 = phi i8* [ %p, %0 ], [ %24, %23 ]
  %.0 = phi i8* [ %to, %0 ], [ %22, %23 ]
  %2 = add i64 %.02, -1
  %3 = icmp ne i64 %.02, 0
  br i1 %3, label %4, label %25

; <label>:4                                       ; preds = %1
  %5 = getelementptr inbounds i8* %.01, i64 0
  %6 = load i8* %5
  %7 = zext i8 %6 to i32
  %8 = ashr i32 %7, 4
  %9 = sext i32 %8 to i64
  %10 = load i8** @bin2str.hex, align 8
  %11 = getelementptr inbounds i8* %10, i64 %9
  %12 = load i8* %11
  %13 = getelementptr inbounds i8* %.0, i32 1
  store i8 %12, i8* %.0
  %14 = getelementptr inbounds i8* %.01, i64 0
  %15 = load i8* %14
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 15
  %18 = sext i32 %17 to i64
  %19 = load i8** @bin2str.hex, align 8
  %20 = getelementptr inbounds i8* %19, i64 %18
  %21 = load i8* %20
  %22 = getelementptr inbounds i8* %13, i32 1
  store i8 %21, i8* %13
  br label %23

; <label>:23                                      ; preds = %4
  %24 = getelementptr inbounds i8* %.01, i32 1
  br label %1

; <label>:25                                      ; preds = %1
  store i8 0, i8* %.0
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mg_modify_passwords_file(i8* %fname, i8* %domain, i8* %user, i8* %pass) #0 {
  %line = alloca [512 x i8], align 16
  %u = alloca [512 x i8], align 16
  %d = alloca [512 x i8], align 16
  %ha1 = alloca [33 x i8], align 16
  %tmp = alloca [4096 x i8], align 16
  %1 = icmp ne i8* %pass, null
  br i1 %1, label %2, label %8

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds i8* %pass, i64 0
  %4 = load i8* %3
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %2
  br label %8

; <label>:8                                       ; preds = %7, %2, %0
  %.01 = phi i8* [ null, %7 ], [ %pass, %2 ], [ %pass, %0 ]
  %9 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %10 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %9, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* %fname) #1
  %11 = call %struct._IO_FILE* @fopen(i8* %fname, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0))
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %8
  %14 = call i32 @fclose(%struct._IO_FILE* %11)
  br label %15

; <label>:15                                      ; preds = %13, %8
  %16 = call %struct._IO_FILE* @fopen(i8* %fname, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0))
  %17 = icmp eq %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %15
  br label %74

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %21 = call %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0))
  %22 = icmp eq %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %19
  %24 = call i32 @fclose(%struct._IO_FILE* %16)
  br label %74

; <label>:25                                      ; preds = %19
  br label %26

; <label>:26                                      ; preds = %25
  br label %27

; <label>:27                                      ; preds = %58, %37, %26
  %found.0 = phi i32 [ 0, %26 ], [ %found.0, %37 ], [ %found.1, %58 ]
  %28 = getelementptr inbounds [512 x i8]* %line, i32 0, i32 0
  %29 = call i8* @fgets(i8* %28, i32 512, %struct._IO_FILE* %16)
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %59

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds [512 x i8]* %line, i32 0, i32 0
  %33 = getelementptr inbounds [512 x i8]* %u, i32 0, i32 0
  %34 = getelementptr inbounds [512 x i8]* %d, i32 0, i32 0
  %35 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %32, i8* getelementptr inbounds ([16 x i8]* @.str10, i32 0, i32 0), i8* %33, i8* %34) #1
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %31
  br label %27

; <label>:38                                      ; preds = %31
  %39 = getelementptr inbounds [512 x i8]* %u, i32 0, i32 0
  %40 = call i32 @strcmp(i8* %39, i8* %user) #3
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

; <label>:42                                      ; preds = %38
  %43 = getelementptr inbounds [512 x i8]* %d, i32 0, i32 0
  %44 = call i32 @strcmp(i8* %43, i8* %domain) #3
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

; <label>:46                                      ; preds = %42
  %47 = add nsw i32 %found.0, 1
  %48 = icmp ne i8* %.01, null
  br i1 %48, label %49, label %54

; <label>:49                                      ; preds = %46
  %50 = getelementptr inbounds [33 x i8]* %ha1, i32 0, i32 0
  %51 = call i8* (i8*, ...)* @mg_md5(i8* %50, i8* %user, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %domain, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %.01, i8* null)
  %52 = getelementptr inbounds [33 x i8]* %ha1, i32 0, i32 0
  %53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0), i8* %user, i8* %domain, i8* %52)
  br label %54

; <label>:54                                      ; preds = %49, %46
  br label %58

; <label>:55                                      ; preds = %42, %38
  %56 = getelementptr inbounds [512 x i8]* %line, i32 0, i32 0
  %57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %56)
  br label %58

; <label>:58                                      ; preds = %55, %54
  %found.1 = phi i32 [ %found.0, %55 ], [ %47, %54 ]
  br label %27

; <label>:59                                      ; preds = %27
  %60 = icmp ne i32 %found.0, 0
  br i1 %60, label %68, label %61

; <label>:61                                      ; preds = %59
  %62 = icmp ne i8* %.01, null
  br i1 %62, label %63, label %68

; <label>:63                                      ; preds = %61
  %64 = getelementptr inbounds [33 x i8]* %ha1, i32 0, i32 0
  %65 = call i8* (i8*, ...)* @mg_md5(i8* %64, i8* %user, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %domain, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %.01, i8* null)
  %66 = getelementptr inbounds [33 x i8]* %ha1, i32 0, i32 0
  %67 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0), i8* %user, i8* %domain, i8* %66)
  br label %68

; <label>:68                                      ; preds = %63, %61, %59
  %69 = call i32 @fclose(%struct._IO_FILE* %16)
  %70 = call i32 @fclose(%struct._IO_FILE* %21)
  %71 = call i32 @remove(i8* %fname) #1
  %72 = getelementptr inbounds [4096 x i8]* %tmp, i32 0, i32 0
  %73 = call i32 @rename(i8* %72, i8* %fname) #1
  br label %74

; <label>:74                                      ; preds = %68, %23, %18
  %.0 = phi i32 [ 0, %18 ], [ 0, %23 ], [ 1, %68 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*)

declare i32 @fclose(%struct._IO_FILE*)

declare i8* @fgets(i8*, i32, %struct._IO_FILE*)

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

; Function Attrs: nounwind
declare i32 @remove(i8*) #1

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @mg_url_encode(i8* %src, i8* %dst, i64 %dst_len) #0 {
  %1 = getelementptr inbounds i8* %dst, i64 %dst_len
  %2 = getelementptr inbounds i8* %1, i64 -1
  br label %3

; <label>:3                                       ; preds = %54, %0
  %.01 = phi i8* [ %dst, %0 ], [ %56, %54 ]
  %.0 = phi i8* [ %src, %0 ], [ %55, %54 ]
  %4 = load i8* %.0
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %3
  %8 = icmp ult i8* %.01, %2
  br label %9

; <label>:9                                       ; preds = %7, %3
  %10 = phi i1 [ false, %3 ], [ %8, %7 ]
  br i1 %10, label %11, label %57

; <label>:11                                      ; preds = %9
  %12 = load i8* %.0
  %13 = zext i8 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = call i16** @__ctype_b_loc() #2
  %16 = load i16** %15
  %17 = getelementptr inbounds i16* %16, i64 %14
  %18 = load i16* %17
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

; <label>:22                                      ; preds = %11
  %23 = load i8** @mg_url_encode.dont_escape, align 8
  %24 = load i8* %.0
  %25 = zext i8 %24 to i32
  %26 = call i8* @strchr(i8* %23, i32 %25) #3
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

; <label>:28                                      ; preds = %22, %11
  %29 = load i8* %.0
  store i8 %29, i8* %.01
  br label %53

; <label>:30                                      ; preds = %22
  %31 = getelementptr inbounds i8* %.01, i64 2
  %32 = icmp ult i8* %31, %2
  br i1 %32, label %33, label %52

; <label>:33                                      ; preds = %30
  %34 = getelementptr inbounds i8* %.01, i64 0
  store i8 37, i8* %34
  %35 = load i8* %.0
  %36 = zext i8 %35 to i32
  %37 = ashr i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = load i8** @mg_url_encode.hex, align 8
  %40 = getelementptr inbounds i8* %39, i64 %38
  %41 = load i8* %40
  %42 = getelementptr inbounds i8* %.01, i64 1
  store i8 %41, i8* %42
  %43 = load i8* %.0
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 15
  %46 = sext i32 %45 to i64
  %47 = load i8** @mg_url_encode.hex, align 8
  %48 = getelementptr inbounds i8* %47, i64 %46
  %49 = load i8* %48
  %50 = getelementptr inbounds i8* %.01, i64 2
  store i8 %49, i8* %50
  %51 = getelementptr inbounds i8* %.01, i64 2
  br label %52

; <label>:52                                      ; preds = %33, %30
  %.1 = phi i8* [ %51, %33 ], [ %.01, %30 ]
  br label %53

; <label>:53                                      ; preds = %52, %28
  %.2 = phi i8* [ %.01, %28 ], [ %.1, %52 ]
  br label %54

; <label>:54                                      ; preds = %53
  %55 = getelementptr inbounds i8* %.0, i32 1
  %56 = getelementptr inbounds i8* %.2, i32 1
  br label %3

; <label>:57                                      ; preds = %9
  store i8 0, i8* %.01
  ret void
}

; Function Attrs: nounwind uwtable
define void @mg_send_file(%struct.mg_connection* %conn, i8* %path) #0 {
  %file = alloca %struct.file, align 8
  %1 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = bitcast i8* %1 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %3 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %2, i32 0, i32 6
  %4 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %path, %struct.file* %file)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @handle_file_request(%struct.mg_connection* %conn, i8* %path, %struct.file* %file)
  br label %8

; <label>:7                                       ; preds = %0
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 404, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str17, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @mg_stat(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep) #0 {
  %st = alloca %struct.stat, align 8
  %1 = call i32 @is_file_in_memory(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep)
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %19, label %3

; <label>:3                                       ; preds = %0
  %4 = call i32 @stat(i8* %path, %struct.stat* %st) #1
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %19, label %6

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds %struct.stat* %st, i32 0, i32 8
  %8 = load i64* %7, align 8
  %9 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.stat* %st, i32 0, i32 13
  %11 = load i64* %10, align 8
  %12 = getelementptr inbounds %struct.file* %filep, i32 0, i32 1
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.stat* %st, i32 0, i32 3
  %14 = load i32* %13, align 4
  %15 = and i32 %14, 61440
  %16 = icmp eq i32 %15, 16384
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.file* %filep, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  br label %21

; <label>:19                                      ; preds = %3, %0
  %20 = getelementptr inbounds %struct.file* %filep, i32 0, i32 1
  store i64 0, i64* %20, align 8
  br label %21

; <label>:21                                      ; preds = %19, %6
  %22 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  %23 = load i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds %struct.file* %filep, i32 0, i32 1
  %27 = load i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

; <label>:29                                      ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal void @handle_file_request(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep) #0 {
  %date = alloca [64 x i8], align 16
  %lm = alloca [64 x i8], align 16
  %etag = alloca [64 x i8], align 16
  %range = alloca [64 x i8], align 16
  %curtime = alloca i64, align 8
  %r1 = alloca i64, align 8
  %r2 = alloca i64, align 8
  %mime_vec = alloca %struct.vec, align 8
  %gz_path = alloca [4096 x i8], align 16
  %1 = call i64 @time(i64* null) #1
  store i64 %1, i64* %curtime, align 8
  %2 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %3 = load %struct.mg_context** %2, align 8
  call void @get_mime_type(%struct.mg_context* %3, i8* %path, %struct.vec* %mime_vec)
  %4 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %5 = load i64* %4, align 8
  %6 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 200, i32* %6, align 4
  %7 = getelementptr inbounds [64 x i8]* %range, i32 0, i64 0
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.file* %filep, i32 0, i32 5
  %9 = load i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds [4096 x i8]* %gz_path, i32 0, i32 0
  %13 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %12, i64 4096, i8* getelementptr inbounds ([6 x i8]* @.str251, i32 0, i32 0), i8* %path) #1
  %14 = getelementptr inbounds [4096 x i8]* %gz_path, i32 0, i32 0
  br label %15

; <label>:15                                      ; preds = %11, %0
  %.0 = phi i8* [ %14, %11 ], [ %path, %0 ]
  %encoding.0 = phi i8* [ getelementptr inbounds ([25 x i8]* @.str312, i32 0, i32 0), %11 ], [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %0 ]
  %16 = call i32 @mg_fopen(%struct.mg_connection* %conn, i8* %.0, i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0), %struct.file* %filep)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

; <label>:18                                      ; preds = %15
  %19 = load i8** @http_500_error, align 8
  %20 = call i32* @__errno_location() #2
  %21 = load i32* %20
  %22 = call i8* @strerror(i32 %21) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %19, i8* getelementptr inbounds ([14 x i8]* @.str94, i32 0, i32 0), i8* %.0, i8* %22)
  br label %93

; <label>:23                                      ; preds = %15
  call void @fclose_on_exec(%struct.file* %filep)
  store i64 0, i64* %r2, align 8
  store i64 0, i64* %r1, align 8
  %24 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([6 x i8]* @.str313, i32 0, i32 0))
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %67

; <label>:26                                      ; preds = %23
  %27 = call i32 @parse_range_header(i8* %24, i64* %r1, i64* %r2)
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %67

; <label>:29                                      ; preds = %26
  %30 = load i64* %r1, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %67

; <label>:32                                      ; preds = %29
  %33 = load i64* %r2, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %67

; <label>:35                                      ; preds = %32
  %36 = getelementptr inbounds %struct.file* %filep, i32 0, i32 5
  %37 = load i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %35
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 501, i8* getelementptr inbounds ([16 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8]* @.str314, i32 0, i32 0))
  br label %93

; <label>:40                                      ; preds = %35
  %41 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 206, i32* %41, align 4
  %42 = icmp eq i32 %27, 2
  br i1 %42, label %43, label %54

; <label>:43                                      ; preds = %40
  %44 = load i64* %r2, align 8
  %45 = icmp sgt i64 %44, %5
  br i1 %45, label %46, label %47

; <label>:46                                      ; preds = %43
  br label %49

; <label>:47                                      ; preds = %43
  %48 = load i64* %r2, align 8
  br label %49

; <label>:49                                      ; preds = %47, %46
  %50 = phi i64 [ %5, %46 ], [ %48, %47 ]
  %51 = load i64* %r1, align 8
  %52 = sub nsw i64 %50, %51
  %53 = add nsw i64 %52, 1
  br label %57

; <label>:54                                      ; preds = %40
  %55 = load i64* %r1, align 8
  %56 = sub nsw i64 %5, %55
  br label %57

; <label>:57                                      ; preds = %54, %49
  %58 = phi i64 [ %53, %49 ], [ %56, %54 ]
  %59 = getelementptr inbounds [64 x i8]* %range, i32 0, i32 0
  %60 = load i64* %r1, align 8
  %61 = load i64* %r1, align 8
  %62 = add nsw i64 %61, %58
  %63 = sub nsw i64 %62, 1
  %64 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %65 = load i64* %64, align 8
  %66 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %59, i64 64, i8* getelementptr inbounds ([35 x i8]* @.str315, i32 0, i32 0), i64 %60, i64 %63, i64 %65)
  br label %67

; <label>:67                                      ; preds = %57, %32, %29, %26, %23
  %msg.0 = phi i8* [ getelementptr inbounds ([16 x i8]* @.str316, i32 0, i32 0), %57 ], [ getelementptr inbounds ([3 x i8]* @.str118, i32 0, i32 0), %32 ], [ getelementptr inbounds ([3 x i8]* @.str118, i32 0, i32 0), %29 ], [ getelementptr inbounds ([3 x i8]* @.str118, i32 0, i32 0), %26 ], [ getelementptr inbounds ([3 x i8]* @.str118, i32 0, i32 0), %23 ]
  %cl.0 = phi i64 [ %58, %57 ], [ %5, %32 ], [ %5, %29 ], [ %5, %26 ], [ %5, %23 ]
  %68 = getelementptr inbounds [64 x i8]* %date, i32 0, i32 0
  call void @gmt_time_string(i8* %68, i64 64, i64* %curtime)
  %69 = getelementptr inbounds [64 x i8]* %lm, i32 0, i32 0
  %70 = getelementptr inbounds %struct.file* %filep, i32 0, i32 1
  call void @gmt_time_string(i8* %69, i64 64, i64* %70)
  %71 = getelementptr inbounds [64 x i8]* %etag, i32 0, i32 0
  call void @construct_etag(i8* %71, i64 64, %struct.file* %filep)
  %72 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  %73 = load i32* %72, align 4
  %74 = getelementptr inbounds [64 x i8]* %date, i32 0, i32 0
  %75 = getelementptr inbounds [64 x i8]* %lm, i32 0, i32 0
  %76 = getelementptr inbounds [64 x i8]* %etag, i32 0, i32 0
  %77 = getelementptr inbounds %struct.vec* %mime_vec, i32 0, i32 1
  %78 = load i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %struct.vec* %mime_vec, i32 0, i32 0
  %81 = load i8** %80, align 8
  %82 = call i8* @suggest_connection_header(%struct.mg_connection* %conn)
  %83 = getelementptr inbounds [64 x i8]* %range, i32 0, i32 0
  %84 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([143 x i8]* @.str317, i32 0, i32 0), i32 %73, i8* %msg.0, i8* %74, i8* %75, i8* %76, i32 %79, i8* %81, i64 %cl.0, i8* %82, i8* %83, i8* %encoding.0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  %85 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %86 = getelementptr inbounds %struct.mg_request_info* %85, i32 0, i32 0
  %87 = load i8** %86, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([5 x i8]* @.str69, i32 0, i32 0)) #3
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

; <label>:90                                      ; preds = %67
  %91 = load i64* %r1, align 8
  call void @send_file_data(%struct.mg_connection* %conn, %struct.file* %filep, i64 %91, i64 %cl.0)
  br label %92

; <label>:92                                      ; preds = %90, %67
  call void @mg_fclose(%struct.file* %filep)
  br label %93

; <label>:93                                      ; preds = %92, %39, %18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @send_http_error(%struct.mg_connection* %conn, i32 %status, i8* %reason, i8* %fmt, ...) #0 {
  %buf = alloca [8192 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 %status, i32* %1, align 4
  %2 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %2, align 1
  %3 = icmp sgt i32 %status, 199
  br i1 %3, label %4, label %26

; <label>:4                                       ; preds = %0
  %5 = icmp ne i32 %status, 204
  br i1 %5, label %6, label %26

; <label>:6                                       ; preds = %4
  %7 = icmp ne i32 %status, 304
  br i1 %7, label %8, label %26

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %10 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %9, i64 8192, i8* getelementptr inbounds ([13 x i8]* @.str309, i32 0, i32 0), i32 %status, i8* %reason)
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %12
  store i8 10, i8* %13, align 1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_start(i8* %15)
  %16 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %17 = sext i32 %11 to i64
  %18 = getelementptr inbounds i8* %16, i64 %17
  %19 = sext i32 %11 to i64
  %20 = sub i64 8192, %19
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %22 = call i32 @mg_vsnprintf(%struct.mg_connection* %conn, i8* %18, i64 %20, i8* %fmt, %struct.__va_list_tag* %21)
  %23 = add nsw i32 %11, %22
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %25 = bitcast %struct.__va_list_tag* %24 to i8*
  call void @llvm.va_end(i8* %25)
  br label %26

; <label>:26                                      ; preds = %8, %6, %4, %0
  %len.0 = phi i32 [ %23, %8 ], [ 0, %6 ], [ 0, %4 ], [ 0, %0 ]
  %27 = call i8* @suggest_connection_header(%struct.mg_connection* %conn)
  %28 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([55 x i8]* @.str310, i32 0, i32 0), i32 %status, i8* %reason, i32 %len.0, i8* %27)
  %29 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %30 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %33 = load i64* %32, align 8
  %34 = add nsw i64 %33, %31
  store i64 %34, i64* %32, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mg_upload(%struct.mg_connection* %conn, i8* %destination_dir) #0 {
  %buf = alloca [8192 x i8], align 16
  %path = alloca [4096 x i8], align 16
  %fname = alloca [1024 x i8], align 16
  %boundary = alloca [100 x i8], align 16
  %1 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([13 x i8]* @.str18, i32 0, i32 0))
  %2 = icmp eq i8* %1, null
  br i1 %2, label %19, label %3

; <label>:3                                       ; preds = %0
  %4 = call i8* @mg_strcasestr(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str19, i32 0, i32 0))
  %5 = icmp eq i8* %4, null
  br i1 %5, label %19, label %6

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds [100 x i8]* %boundary, i32 0, i32 0
  %8 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([19 x i8]* @.str20, i32 0, i32 0), i8* %7) #1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds [100 x i8]* %boundary, i32 0, i32 0
  %12 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([14 x i8]* @.str21, i32 0, i32 0), i8* %11) #1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

; <label>:14                                      ; preds = %10, %6
  %15 = getelementptr inbounds [100 x i8]* %boundary, i32 0, i64 0
  %16 = load i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %14, %10, %3, %0
  br label %196

; <label>:20                                      ; preds = %14
  %21 = getelementptr inbounds [100 x i8]* %boundary, i32 0, i32 0
  %22 = call i64 @strlen(i8* %21) #3
  %23 = trunc i64 %22 to i32
  %24 = add nsw i32 %23, 4
  br label %25

; <label>:25                                      ; preds = %194, %20
  %len.0 = phi i32 [ 0, %20 ], [ %len.4, %194 ]
  %num_uploaded_files.0 = phi i32 [ 0, %20 ], [ %num_uploaded_files.1, %194 ]
  %26 = icmp sge i32 %len.0, 0
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %25
  %28 = icmp sle i32 %len.0, 8192
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %27
  br label %32

; <label>:30                                      ; preds = %27, %25
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 4317, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.mg_upload, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  br label %33

; <label>:33                                      ; preds = %41, %32
  %len.1 = phi i32 [ %len.0, %32 ], [ %42, %41 ]
  %34 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %35 = sext i32 %len.1 to i64
  %36 = getelementptr inbounds i8* %34, i64 %35
  %37 = sext i32 %len.1 to i64
  %38 = sub i64 8192, %37
  %39 = call i32 @mg_read(%struct.mg_connection* %conn, i8* %36, i64 %38)
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

; <label>:41                                      ; preds = %33
  %42 = add nsw i32 %len.1, %39
  br label %33

; <label>:43                                      ; preds = %33
  %44 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %45 = call i32 @get_request_len(i8* %44, i32 %len.1)
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %43
  br label %195

; <label>:48                                      ; preds = %43
  %49 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i64 0
  store i8 0, i8* %49, align 1
  br label %50

; <label>:50                                      ; preds = %77, %48
  %i.0 = phi i32 [ 0, %48 ], [ %78, %77 ]
  %j.0 = phi i32 [ 0, %48 ], [ %j.1, %77 ]
  %51 = icmp slt i32 %i.0, %45
  br i1 %51, label %52, label %79

; <label>:52                                      ; preds = %50
  %53 = sext i32 %i.0 to i64
  %54 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %53
  %55 = load i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %58, label %76

; <label>:58                                      ; preds = %52
  %59 = add nsw i32 %i.0, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %60
  %62 = load i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %76

; <label>:65                                      ; preds = %58
  %66 = add nsw i32 %i.0, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %67
  store i8 0, i8* %68, align 1
  %69 = sext i32 %i.0 to i64
  %70 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %69
  store i8 0, i8* %70, align 1
  %71 = sext i32 %j.0 to i64
  %72 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %71
  %73 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i32 0
  %74 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %72, i8* getelementptr inbounds ([49 x i8]* @.str23, i32 0, i32 0), i8* %73) #1
  %75 = add nsw i32 %i.0, 2
  br label %76

; <label>:76                                      ; preds = %65, %58, %52
  %j.1 = phi i32 [ %75, %65 ], [ %j.0, %58 ], [ %j.0, %52 ]
  br label %77

; <label>:77                                      ; preds = %76
  %78 = add nsw i32 %i.0, 1
  br label %50

; <label>:79                                      ; preds = %50
  %80 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i64 0
  %81 = load i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %79
  br label %195

; <label>:85                                      ; preds = %79
  %86 = icmp sge i32 %len.1, %45
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %85
  br label %90

; <label>:88                                      ; preds = %85
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 4344, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.mg_upload, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %90

; <label>:90                                      ; preds = %89, %87
  %91 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %92 = sext i32 %45 to i64
  %93 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %92
  %94 = sub nsw i32 %len.1, %45
  %95 = sext i32 %94 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %91, i8* %93, i64 %95, i32 1, i1 false)
  %96 = sub nsw i32 %len.1, %45
  %97 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i32 0
  %98 = call i8* @strrchr(i8* %97, i32 47) #3
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %106

; <label>:100                                     ; preds = %90
  %101 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i32 0
  %102 = call i8* @strrchr(i8* %101, i32 92) #3
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %106

; <label>:104                                     ; preds = %100
  %105 = getelementptr inbounds [1024 x i8]* %fname, i32 0, i32 0
  br label %106

; <label>:106                                     ; preds = %104, %100, %90
  %s.0 = phi i8* [ %105, %104 ], [ %102, %100 ], [ %98, %90 ]
  %107 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %108 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %107, i64 4096, i8* getelementptr inbounds ([6 x i8]* @.str25, i32 0, i32 0), i8* %destination_dir, i8* %s.0) #1
  %109 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %110 = call %struct._IO_FILE* @fopen(i8* %109, i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0))
  %111 = icmp eq %struct._IO_FILE* %110, null
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %106
  br label %195

; <label>:113                                     ; preds = %106
  br label %114

; <label>:114                                     ; preds = %173, %113
  %n.0 = phi i32 [ 0, %113 ], [ %n.1, %173 ]
  %eof.0 = phi i32 [ 0, %113 ], [ %eof.1, %173 ]
  %len.2 = phi i32 [ %96, %113 ], [ %len.4, %173 ]
  %115 = add nsw i32 %len.2, %n.0
  br label %116

; <label>:116                                     ; preds = %146, %114
  %i.1 = phi i32 [ 0, %114 ], [ %147, %146 ]
  %117 = sub nsw i32 %115, %24
  %118 = icmp slt i32 %i.1, %117
  br i1 %118, label %119, label %148

; <label>:119                                     ; preds = %116
  %120 = sext i32 %i.1 to i64
  %121 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %120
  %122 = call i32 @memcmp(i8* %121, i8* getelementptr inbounds ([5 x i8]* @.str27, i32 0, i32 0), i64 4) #3
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %145, label %124

; <label>:124                                     ; preds = %119
  %125 = add nsw i32 %i.1, 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %126
  %128 = getelementptr inbounds [100 x i8]* %boundary, i32 0, i32 0
  %129 = sext i32 %23 to i64
  %130 = call i32 @memcmp(i8* %127, i8* %128, i64 %129) #3
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %145, label %132

; <label>:132                                     ; preds = %124
  %133 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %134 = sext i32 %i.1 to i64
  %135 = call i64 @fwrite(i8* %133, i64 1, i64 %134, %struct._IO_FILE* %110)
  %136 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %137 = add nsw i32 %i.1, %24
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %138
  %140 = add nsw i32 %i.1, %24
  %141 = sub nsw i32 %115, %140
  %142 = sext i32 %141 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %136, i8* %139, i64 %142, i32 1, i1 false)
  %143 = add nsw i32 %i.1, %24
  %144 = sub nsw i32 %115, %143
  br label %148

; <label>:145                                     ; preds = %124, %119
  br label %146

; <label>:146                                     ; preds = %145
  %147 = add nsw i32 %i.1, 1
  br label %116

; <label>:148                                     ; preds = %132, %116
  %eof.1 = phi i32 [ 1, %132 ], [ %eof.0, %116 ]
  %len.3 = phi i32 [ %144, %132 ], [ %115, %116 ]
  %149 = icmp ne i32 %eof.1, 0
  br i1 %149, label %162, label %150

; <label>:150                                     ; preds = %148
  %151 = icmp sgt i32 %len.3, %24
  br i1 %151, label %152, label %162

; <label>:152                                     ; preds = %150
  %153 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %154 = sub nsw i32 %len.3, %24
  %155 = sext i32 %154 to i64
  %156 = call i64 @fwrite(i8* %153, i64 1, i64 %155, %struct._IO_FILE* %110)
  %157 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %158 = sub nsw i32 %len.3, %24
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %159
  %161 = sext i32 %24 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %157, i8* %160, i64 %161, i32 1, i1 false)
  br label %162

; <label>:162                                     ; preds = %152, %150, %148
  %len.4 = phi i32 [ %len.3, %148 ], [ %24, %152 ], [ %len.3, %150 ]
  br label %163

; <label>:163                                     ; preds = %162
  %164 = icmp ne i32 %eof.1, 0
  br i1 %164, label %173, label %165

; <label>:165                                     ; preds = %163
  %166 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %167 = sext i32 %len.4 to i64
  %168 = getelementptr inbounds i8* %166, i64 %167
  %169 = sext i32 %len.4 to i64
  %170 = sub i64 8192, %169
  %171 = call i32 @mg_read(%struct.mg_connection* %conn, i8* %168, i64 %170)
  %172 = icmp sgt i32 %171, 0
  br label %173

; <label>:173                                     ; preds = %165, %163
  %n.1 = phi i32 [ %n.0, %163 ], [ %171, %165 ]
  %174 = phi i1 [ false, %163 ], [ %172, %165 ]
  br i1 %174, label %114, label %175

; <label>:175                                     ; preds = %173
  %176 = call i32 @fclose(%struct._IO_FILE* %110)
  %177 = icmp ne i32 %eof.1, 0
  br i1 %177, label %178, label %194

; <label>:178                                     ; preds = %175
  %179 = add nsw i32 %num_uploaded_files.0, 1
  %180 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %181 = load %struct.mg_context** %180, align 8
  %182 = getelementptr inbounds %struct.mg_context* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.mg_callbacks* %182, i32 0, i32 9
  %184 = load void (%struct.mg_connection*, i8*)** %183, align 8
  %185 = icmp ne void (%struct.mg_connection*, i8*)* %184, null
  br i1 %185, label %186, label %193

; <label>:186                                     ; preds = %178
  %187 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %188 = load %struct.mg_context** %187, align 8
  %189 = getelementptr inbounds %struct.mg_context* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.mg_callbacks* %189, i32 0, i32 9
  %191 = load void (%struct.mg_connection*, i8*)** %190, align 8
  %192 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void %191(%struct.mg_connection* %conn, i8* %192)
  br label %193

; <label>:193                                     ; preds = %186, %178
  br label %194

; <label>:194                                     ; preds = %193, %175
  %num_uploaded_files.1 = phi i32 [ %179, %193 ], [ %num_uploaded_files.0, %175 ]
  br label %25

; <label>:195                                     ; preds = %112, %84, %47
  br label %196

; <label>:196                                     ; preds = %195, %19
  %.0 = phi i32 [ 0, %19 ], [ %num_uploaded_files.0, %195 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @get_request_len(i8* %buf, i32 %buflen) #0 {
  %1 = sext i32 %buflen to i64
  %2 = getelementptr inbounds i8* %buf, i64 %1
  %3 = getelementptr inbounds i8* %2, i64 -1
  br label %4

; <label>:4                                       ; preds = %77, %0
  %s.0 = phi i8* [ %buf, %0 ], [ %78, %77 ]
  %len.0 = phi i32 [ 0, %0 ], [ %len.2, %77 ]
  %5 = icmp sle i32 %len.0, 0
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %4
  %7 = icmp ult i8* %s.0, %3
  br label %8

; <label>:8                                       ; preds = %6, %4
  %9 = phi i1 [ false, %4 ], [ %7, %6 ]
  br i1 %9, label %10, label %79

; <label>:10                                      ; preds = %8
  %11 = load i8* %s.0
  %12 = zext i8 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = call i16** @__ctype_b_loc() #2
  %15 = load i16** %14
  %16 = getelementptr inbounds i16* %15, i64 %13
  %17 = load i16* %16
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 16384
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

; <label>:21                                      ; preds = %10
  %22 = load i8* %s.0
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 13
  br i1 %24, label %25, label %34

; <label>:25                                      ; preds = %21
  %26 = load i8* %s.0
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 10
  br i1 %28, label %29, label %34

; <label>:29                                      ; preds = %25
  %30 = load i8* %s.0
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, 128
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %29
  br label %79

; <label>:34                                      ; preds = %29, %25, %21, %10
  %35 = getelementptr inbounds i8* %s.0, i64 0
  %36 = load i8* %35
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %50

; <label>:39                                      ; preds = %34
  %40 = getelementptr inbounds i8* %s.0, i64 1
  %41 = load i8* %40
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %50

; <label>:44                                      ; preds = %39
  %45 = ptrtoint i8* %s.0 to i64
  %46 = ptrtoint i8* %buf to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = add nsw i32 %48, 2
  br label %75

; <label>:50                                      ; preds = %39, %34
  %51 = getelementptr inbounds i8* %s.0, i64 0
  %52 = load i8* %51
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %74

; <label>:55                                      ; preds = %50
  %56 = getelementptr inbounds i8* %s.0, i64 1
  %57 = icmp ult i8* %56, %3
  br i1 %57, label %58, label %74

; <label>:58                                      ; preds = %55
  %59 = getelementptr inbounds i8* %s.0, i64 1
  %60 = load i8* %59
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 13
  br i1 %62, label %63, label %74

; <label>:63                                      ; preds = %58
  %64 = getelementptr inbounds i8* %s.0, i64 2
  %65 = load i8* %64
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 10
  br i1 %67, label %68, label %74

; <label>:68                                      ; preds = %63
  %69 = ptrtoint i8* %s.0 to i64
  %70 = ptrtoint i8* %buf to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %72, 3
  br label %74

; <label>:74                                      ; preds = %68, %63, %58, %55, %50
  %len.1 = phi i32 [ %73, %68 ], [ %len.0, %63 ], [ %len.0, %58 ], [ %len.0, %55 ], [ %len.0, %50 ]
  br label %75

; <label>:75                                      ; preds = %74, %44
  %len.2 = phi i32 [ %49, %44 ], [ %len.1, %74 ]
  br label %76

; <label>:76                                      ; preds = %75
  br label %77

; <label>:77                                      ; preds = %76
  %78 = getelementptr inbounds i8* %s.0, i32 1
  br label %4

; <label>:79                                      ; preds = %33, %8
  %len.3 = phi i32 [ -1, %33 ], [ %len.0, %8 ]
  ret i32 %len.3
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*)

; Function Attrs: nounwind uwtable
define void @mg_close_connection(%struct.mg_connection* %conn) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 3
  %2 = load %struct.ssl_ctx_st** %1, align 8
  %3 = icmp ne %struct.ssl_ctx_st* %2, null
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 14, i32 1), align 8
  %6 = bitcast void ()* %5 to void (%struct.ssl_ctx_st*)*
  %7 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 3
  %8 = load %struct.ssl_ctx_st** %7, align 8
  call void %6(%struct.ssl_ctx_st* %8)
  br label %9

; <label>:9                                       ; preds = %4, %0
  call void @close_connection(%struct.mg_connection* %conn)
  %10 = bitcast %struct.mg_connection* %conn to i8*
  call void @free(i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @close_connection(%struct.mg_connection* %conn) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 11
  store i32 1, i32* %1, align 4
  %2 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %3 = load %struct.ssl_st** %2, align 8
  %4 = icmp ne %struct.ssl_st* %3, null
  br i1 %4, label %5, label %16

; <label>:5                                       ; preds = %0
  %6 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 20, i32 1), align 8
  %7 = bitcast void ()* %6 to i32 (%struct.ssl_st*)*
  %8 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %9 = load %struct.ssl_st** %8, align 8
  %10 = call i32 %7(%struct.ssl_st* %9)
  %11 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 0, i32 1), align 8
  %12 = bitcast void ()* %11 to void (%struct.ssl_st*)*
  %13 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %14 = load %struct.ssl_st** %13, align 8
  call void %12(%struct.ssl_st* %14)
  %15 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  store %struct.ssl_st* null, %struct.ssl_st** %15, align 8
  br label %16

; <label>:16                                      ; preds = %5, %0
  %17 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %18 = getelementptr inbounds %struct.socket* %17, i32 0, i32 0
  %19 = load i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %16
  call void @close_socket_gracefully(%struct.mg_connection* %conn)
  %22 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %23 = getelementptr inbounds %struct.socket* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  br label %24

; <label>:24                                      ; preds = %21, %16
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.mg_connection* @mg_connect(i8* %host, i32 %port, i32 %use_ssl, i8* %ebuf, i64 %ebuf_len) #0 {
  %len = alloca i32, align 4
  %1 = call i32 @conn2(i8* %host, i32 %port, i32 %use_ssl, i8* %ebuf, i64 %ebuf_len)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %64

; <label>:4                                       ; preds = %0
  %5 = call noalias i8* @calloc(i64 1, i64 17640) #1
  %6 = bitcast i8* %5 to %struct.mg_connection*
  %7 = icmp eq %struct.mg_connection* %6, null
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %4
  %9 = call i32* @__errno_location() #2
  %10 = load i32* %9
  %11 = call i8* @strerror(i32 %10) #1
  %12 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([13 x i8]* @.str28, i32 0, i32 0), i8* %11) #1
  %13 = call i32 @close(i32 %1)
  br label %63

; <label>:14                                      ; preds = %4
  %15 = icmp ne i32 %use_ssl, 0
  br i1 %15, label %16, label %29

; <label>:16                                      ; preds = %14
  %17 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 8, i32 1), align 8
  %18 = bitcast void ()* %17 to %struct.ssl_ctx_st* (%struct.ssl_method_st*)*
  %19 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 17, i32 1), align 8
  %20 = bitcast void ()* %19 to %struct.ssl_method_st* ()*
  %21 = call %struct.ssl_method_st* %20()
  %22 = call %struct.ssl_ctx_st* %18(%struct.ssl_method_st* %21)
  %23 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 3
  store %struct.ssl_ctx_st* %22, %struct.ssl_ctx_st** %23, align 8
  %24 = icmp eq %struct.ssl_ctx_st* %22, null
  br i1 %24, label %25, label %29

; <label>:25                                      ; preds = %16
  %26 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([18 x i8]* @.str29, i32 0, i32 0)) #1
  %27 = call i32 @close(i32 %1)
  %28 = bitcast %struct.mg_connection* %6 to i8*
  call void @free(i8* %28) #1
  br label %62

; <label>:29                                      ; preds = %16, %14
  store i32 16, i32* %len, align 4
  %30 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 12
  store i32 16384, i32* %30, align 4
  %31 = getelementptr inbounds %struct.mg_connection* %6, i64 1
  %32 = bitcast %struct.mg_connection* %31 to i8*
  %33 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 9
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 1
  store %struct.mg_context* @mg_connect.fake_ctx, %struct.mg_context** %34, align 8
  %35 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 4
  %36 = getelementptr inbounds %struct.socket* %35, i32 0, i32 0
  store i32 %1, i32* %36, align 4
  %37 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 4
  %38 = getelementptr inbounds %struct.socket* %37, i32 0, i32 2
  %39 = bitcast %union.usa* %38 to %struct.sockaddr*
  %40 = call i32 @getsockname(i32 %1, %struct.sockaddr* %39, i32* %len) #1
  %41 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 4
  %42 = and i32 %use_ssl, 1
  %43 = bitcast %struct.socket* %41 to i8*
  %44 = getelementptr i8* %43, i32 36
  %45 = bitcast i8* %44 to i32*
  %46 = and i32 %42, 1
  %47 = load i32* %45, align 4
  %48 = and i32 %47, -2
  %49 = or i32 %48, %46
  store i32 %49, i32* %45, align 4
  %50 = icmp ne i32 %use_ssl, 0
  br i1 %50, label %51, label %61

; <label>:51                                      ; preds = %29
  %52 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 19, i32 1), align 8
  %53 = bitcast void ()* %52 to void (%struct.ssl_ctx_st*, i32, i32)*
  %54 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 3
  %55 = load %struct.ssl_ctx_st** %54, align 8
  call void %53(%struct.ssl_ctx_st* %55, i32 0, i32 0)
  %56 = getelementptr inbounds %struct.mg_connection* %6, i32 0, i32 3
  %57 = load %struct.ssl_ctx_st** %56, align 8
  %58 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 2, i32 1), align 8
  %59 = bitcast void ()* %58 to i32 (%struct.ssl_st*)*
  %60 = call i32 @sslize(%struct.mg_connection* %6, %struct.ssl_ctx_st* %57, i32 (%struct.ssl_st*)* %59)
  br label %61

; <label>:61                                      ; preds = %51, %29
  br label %62

; <label>:62                                      ; preds = %61, %25
  %conn.0 = phi %struct.mg_connection* [ null, %25 ], [ %6, %61 ]
  br label %63

; <label>:63                                      ; preds = %62, %8
  %conn.1 = phi %struct.mg_connection* [ %6, %8 ], [ %conn.0, %62 ]
  br label %64

; <label>:64                                      ; preds = %63, %3
  %conn.2 = phi %struct.mg_connection* [ null, %3 ], [ %conn.1, %63 ]
  ret %struct.mg_connection* %conn.2
}

; Function Attrs: nounwind uwtable
define internal i32 @conn2(i8* %host, i32 %port, i32 %use_ssl, i8* %ebuf, i64 %ebuf_len) #0 {
  %sin = alloca %struct.sockaddr_in, align 4
  %1 = icmp eq i8* %host, null
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str283, i32 0, i32 0)) #1
  br label %54

; <label>:4                                       ; preds = %0
  %5 = icmp ne i32 %use_ssl, 0
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %4
  %7 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 17, i32 1), align 8
  %8 = bitcast void ()* %7 to %struct.ssl_method_st* ()*
  %9 = icmp eq %struct.ssl_method_st* ()* %8, null
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str284, i32 0, i32 0)) #1
  br label %53

; <label>:12                                      ; preds = %6, %4
  %13 = call %struct.hostent* @gethostbyname(i8* %host)
  %14 = icmp eq %struct.hostent* %13, null
  br i1 %14, label %15, label %20

; <label>:15                                      ; preds = %12
  %16 = call i32* @__errno_location() #2
  %17 = load i32* %16
  %18 = call i8* @strerror(i32 %17) #1
  %19 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([22 x i8]* @.str285, i32 0, i32 0), i8* %host, i8* %18) #1
  br label %52

; <label>:20                                      ; preds = %12
  %21 = call i32 @socket(i32 2, i32 1, i32 0) #1
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %28

; <label>:23                                      ; preds = %20
  %24 = call i32* @__errno_location() #2
  %25 = load i32* %24
  %26 = call i8* @strerror(i32 %25) #1
  %27 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([13 x i8]* @.str286, i32 0, i32 0), i8* %26) #1
  br label %51

; <label>:28                                      ; preds = %20
  call void @set_close_on_exec(i32 %21)
  %29 = getelementptr inbounds %struct.sockaddr_in* %sin, i32 0, i32 0
  store i16 2, i16* %29, align 2
  %30 = trunc i32 %port to i16
  %31 = call zeroext i16 @htons(i16 zeroext %30) #2
  %32 = getelementptr inbounds %struct.sockaddr_in* %sin, i32 0, i32 1
  store i16 %31, i16* %32, align 2
  %33 = getelementptr inbounds %struct.sockaddr_in* %sin, i32 0, i32 2
  %34 = getelementptr inbounds %struct.hostent* %13, i32 0, i32 4
  %35 = load i8*** %34, align 8
  %36 = getelementptr inbounds i8** %35, i64 0
  %37 = load i8** %36
  %38 = bitcast i8* %37 to %struct.in_addr*
  %39 = bitcast %struct.in_addr* %33 to i8*
  %40 = bitcast %struct.in_addr* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 4, i32 4, i1 false)
  %41 = bitcast %struct.sockaddr_in* %sin to %struct.sockaddr*
  %42 = call i32 @connect(i32 %21, %struct.sockaddr* %41, i32 16)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

; <label>:44                                      ; preds = %28
  %45 = call i32* @__errno_location() #2
  %46 = load i32* %45
  %47 = call i8* @strerror(i32 %46) #1
  %48 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([19 x i8]* @.str287, i32 0, i32 0), i8* %host, i32 %port, i8* %47) #1
  %49 = call i32 @close(i32 %21)
  br label %50

; <label>:50                                      ; preds = %44, %28
  %sock.0 = phi i32 [ -1, %44 ], [ %21, %28 ]
  br label %51

; <label>:51                                      ; preds = %50, %23
  %sock.1 = phi i32 [ %21, %23 ], [ %sock.0, %50 ]
  br label %52

; <label>:52                                      ; preds = %51, %15
  %sock.2 = phi i32 [ -1, %15 ], [ %sock.1, %51 ]
  br label %53

; <label>:53                                      ; preds = %52, %10
  %sock.3 = phi i32 [ -1, %10 ], [ %sock.2, %52 ]
  br label %54

; <label>:54                                      ; preds = %53, %2
  %sock.4 = phi i32 [ -1, %2 ], [ %sock.3, %53 ]
  ret i32 %sock.4
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i32 @close(i32)

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sslize(%struct.mg_connection* %conn, %struct.ssl_ctx_st* %s, i32 (%struct.ssl_st*)* %func) #0 {
  %1 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 7, i32 1), align 8
  %2 = bitcast void ()* %1 to %struct.ssl_st* (%struct.ssl_ctx_st*)*
  %3 = call %struct.ssl_st* %2(%struct.ssl_ctx_st* %s)
  %4 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  store %struct.ssl_st* %3, %struct.ssl_st** %4, align 8
  %5 = icmp ne %struct.ssl_st* %3, null
  br i1 %5, label %6, label %21

; <label>:6                                       ; preds = %0
  %7 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 6, i32 1), align 8
  %8 = bitcast void ()* %7 to i32 (%struct.ssl_st*, i32)*
  %9 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %10 = load %struct.ssl_st** %9, align 8
  %11 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %12 = getelementptr inbounds %struct.socket* %11, i32 0, i32 0
  %13 = load i32* %12, align 4
  %14 = call i32 %8(%struct.ssl_st* %10, i32 %13)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %6
  %17 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %18 = load %struct.ssl_st** %17, align 8
  %19 = call i32 %func(%struct.ssl_st* %18)
  %20 = icmp eq i32 %19, 1
  br label %21

; <label>:21                                      ; preds = %16, %6, %0
  %22 = phi i1 [ false, %6 ], [ false, %0 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define %struct.mg_connection* @mg_download(i8* %host, i32 %port, i32 %use_ssl, i8* %ebuf, i64 %ebuf_len, i8* %fmt, ...) #0 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %2 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.va_start(i8* %2)
  %3 = getelementptr inbounds i8* %ebuf, i64 0
  store i8 0, i8* %3
  %4 = call %struct.mg_connection* @mg_connect(i8* %host, i32 %port, i32 %use_ssl, i8* %ebuf, i64 %ebuf_len)
  %5 = icmp eq %struct.mg_connection* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  br label %16

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %9 = call i32 @mg_vprintf(%struct.mg_connection* %4, i8* %fmt, %struct.__va_list_tag* %8)
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %7
  %12 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str30, i32 0, i32 0)) #1
  br label %15

; <label>:13                                      ; preds = %7
  %14 = call i32 @getreq(%struct.mg_connection* %4, i8* %ebuf, i64 %ebuf_len)
  br label %15

; <label>:15                                      ; preds = %13, %11
  br label %16

; <label>:16                                      ; preds = %15, %6
  %17 = getelementptr inbounds i8* %ebuf, i64 0
  %18 = load i8* %17
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %16
  %22 = icmp ne %struct.mg_connection* %4, null
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %21
  call void @mg_close_connection(%struct.mg_connection* %4)
  br label %24

; <label>:24                                      ; preds = %23, %21, %16
  %conn.0 = phi %struct.mg_connection* [ null, %23 ], [ %4, %21 ], [ %4, %16 ]
  ret %struct.mg_connection* %conn.0
}

; Function Attrs: nounwind uwtable
define internal i32 @getreq(%struct.mg_connection* %conn, i8* %ebuf, i64 %ebuf_len) #0 {
  %1 = getelementptr inbounds i8* %ebuf, i64 0
  store i8 0, i8* %1
  call void @reset_per_request_attributes(%struct.mg_connection* %conn)
  %2 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 9
  %3 = load i8** %2, align 8
  %4 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 12
  %5 = load i32* %4, align 4
  %6 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %7 = call i32 @read_request(%struct._IO_FILE* null, %struct.mg_connection* %conn, i8* %3, i32 %5, i32* %6)
  %8 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  %10 = load i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %14 = load i32* %13, align 4
  %15 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  %16 = load i32* %15, align 4
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %12, %0
  br label %21

; <label>:19                                      ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([61 x i8]* @.str277, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 5015, i8* getelementptr inbounds ([51 x i8]* @__PRETTY_FUNCTION__.getreq, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  %23 = load i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %27 = load i32* %26, align 4
  %28 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 12
  %29 = load i32* %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %33

; <label>:31                                      ; preds = %25
  %32 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str278, i32 0, i32 0)) #1
  br label %82

; <label>:33                                      ; preds = %25, %21
  %34 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  %35 = load i32* %34, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %39

; <label>:37                                      ; preds = %33
  %38 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str279, i32 0, i32 0)) #1
  br label %81

; <label>:39                                      ; preds = %33
  %40 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 9
  %41 = load i8** %40, align 8
  %42 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 12
  %43 = load i32* %42, align 4
  %44 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %45 = call i32 @parse_http_message(i8* %41, i32 %43, %struct.mg_request_info* %44)
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %53

; <label>:47                                      ; preds = %39
  %48 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %49 = load i32* %48, align 4
  %50 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 9
  %51 = load i8** %50, align 8
  %52 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %ebuf, i64 %ebuf_len, i8* getelementptr inbounds ([20 x i8]* @.str280, i32 0, i32 0), i32 %49, i8* %51) #1
  br label %80

; <label>:53                                      ; preds = %39
  %54 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %55 = call i8* @get_header(%struct.mg_request_info* %54, i8* getelementptr inbounds ([15 x i8]* @.str164, i32 0, i32 0))
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %53
  %58 = call i64 @strtoll(i8* %55, i8** null, i32 10) #1
  %59 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  store i64 %58, i64* %59, align 8
  br label %77

; <label>:60                                      ; preds = %53
  %61 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %62 = getelementptr inbounds %struct.mg_request_info* %61, i32 0, i32 0
  %63 = load i8** %62, align 8
  %64 = call i32 @mg_strcasecmp(i8* %63, i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

; <label>:66                                      ; preds = %60
  %67 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %68 = getelementptr inbounds %struct.mg_request_info* %67, i32 0, i32 0
  %69 = load i8** %68, align 8
  %70 = call i32 @mg_strcasecmp(i8* %69, i8* getelementptr inbounds ([4 x i8]* @.str58, i32 0, i32 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

; <label>:72                                      ; preds = %66, %60
  %73 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  store i64 -1, i64* %73, align 8
  br label %76

; <label>:74                                      ; preds = %66
  %75 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  store i64 0, i64* %75, align 8
  br label %76

; <label>:76                                      ; preds = %74, %72
  br label %77

; <label>:77                                      ; preds = %76, %57
  %78 = call i64 @time(i64* null) #1
  %79 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 5
  store i64 %78, i64* %79, align 8
  br label %80

; <label>:80                                      ; preds = %77, %47
  br label %81

; <label>:81                                      ; preds = %80, %37
  br label %82

; <label>:82                                      ; preds = %81, %31
  %83 = getelementptr inbounds i8* %ebuf, i64 0
  %84 = load i8* %83
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define void @mg_stop(%struct.mg_context* %ctx) #0 {
  %1 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 0
  store volatile i32 1, i32* %1, align 4
  br label %2

; <label>:2                                       ; preds = %6, %0
  %3 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 0
  %4 = load volatile i32* %3, align 4
  %5 = icmp ne i32 %4, 2
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %2
  %7 = call i32 @usleep(i32 10000)
  br label %2

; <label>:8                                       ; preds = %2
  call void @free_context(%struct.mg_context* %ctx)
  ret void
}

declare i32 @usleep(i32)

; Function Attrs: nounwind uwtable
define internal void @free_context(%struct.mg_context* %ctx) #0 {
  br label %1

; <label>:1                                       ; preds = %15, %0
  %i.0 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %2 = icmp slt i32 %i.0, 24
  br i1 %2, label %3, label %17

; <label>:3                                       ; preds = %1
  %4 = sext i32 %i.0 to i64
  %5 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %6 = getelementptr inbounds [24 x i8*]* %5, i32 0, i64 %4
  %7 = load i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %3
  %10 = sext i32 %i.0 to i64
  %11 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %12 = getelementptr inbounds [24 x i8*]* %11, i32 0, i64 %10
  %13 = load i8** %12, align 8
  call void @free(i8* %13) #1
  br label %14

; <label>:14                                      ; preds = %9, %3
  br label %15

; <label>:15                                      ; preds = %14
  %16 = add nsw i32 %i.0, 1
  br label %1

; <label>:17                                      ; preds = %1
  %18 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 1
  %19 = load %struct.ssl_ctx_st** %18, align 8
  %20 = icmp ne %struct.ssl_ctx_st* %19, null
  br i1 %20, label %21, label %26

; <label>:21                                      ; preds = %17
  %22 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 14, i32 1), align 8
  %23 = bitcast void ()* %22 to void (%struct.ssl_ctx_st*)*
  %24 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 1
  %25 = load %struct.ssl_ctx_st** %24, align 8
  call void %23(%struct.ssl_ctx_st* %25)
  br label %26

; <label>:26                                      ; preds = %21, %17
  %27 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %28 = icmp ne %union.pthread_mutex_t* %27, null
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %26
  %30 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %31 = bitcast %union.pthread_mutex_t* %30 to i8*
  call void @free(i8* %31) #1
  store %union.pthread_mutex_t* null, %union.pthread_mutex_t** @ssl_mutexes, align 8
  br label %32

; <label>:32                                      ; preds = %29, %26
  %33 = bitcast %struct.mg_context* %ctx to i8*
  call void @free(i8* %33) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.mg_context* @mg_start(%struct.mg_callbacks* %callbacks, i8* %user_data, i8** %options) #0 {
  %1 = call noalias i8* @calloc(i64 1, i64 1320) #1
  %2 = bitcast i8* %1 to %struct.mg_context*
  %3 = icmp eq %struct.mg_context* %2, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  br label %126

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 3
  %7 = bitcast %struct.mg_callbacks* %6 to i8*
  %8 = bitcast %struct.mg_callbacks* %callbacks to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 96, i32 8, i1 false)
  %9 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 4
  store i8* %user_data, i8** %9, align 8
  br label %10

; <label>:10                                      ; preds = %42, %5
  %.01 = phi i8** [ %options, %5 ], [ %24, %42 ]
  %name.0 = phi i8* [ undef, %5 ], [ %name.1, %42 ]
  %11 = icmp ne i8** %.01, null
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds i8** %.01, i32 1
  %14 = load i8** %.01
  %15 = icmp ne i8* %14, null
  br label %16

; <label>:16                                      ; preds = %12, %10
  %.1 = phi i8** [ %13, %12 ], [ %.01, %10 ]
  %name.1 = phi i8* [ %14, %12 ], [ %name.0, %10 ]
  %17 = phi i1 [ false, %10 ], [ %15, %12 ]
  br i1 %17, label %18, label %47

; <label>:18                                      ; preds = %16
  %19 = call i32 @get_option_index(i8* %name.1)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %18
  %22 = call %struct.mg_connection* @fc(%struct.mg_context* %2)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %22, i8* getelementptr inbounds ([19 x i8]* @.str31, i32 0, i32 0), i8* %name.1)
  call void @free_context(%struct.mg_context* %2)
  br label %126

; <label>:23                                      ; preds = %18
  %24 = getelementptr inbounds i8** %.1, i32 1
  %25 = load i8** %.1
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

; <label>:27                                      ; preds = %23
  %28 = call %struct.mg_connection* @fc(%struct.mg_context* %2)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %28, i8* getelementptr inbounds ([32 x i8]* @.str32, i32 0, i32 0), i8* %name.1)
  call void @free_context(%struct.mg_context* %2)
  br label %126

; <label>:29                                      ; preds = %23
  br label %30

; <label>:30                                      ; preds = %29
  %31 = sext i32 %19 to i64
  %32 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %33 = getelementptr inbounds [24 x i8*]* %32, i32 0, i64 %31
  %34 = load i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

; <label>:36                                      ; preds = %30
  %37 = call %struct.mg_connection* @fc(%struct.mg_context* %2)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %37, i8* getelementptr inbounds ([30 x i8]* @.str33, i32 0, i32 0), i8* %name.1)
  %38 = sext i32 %19 to i64
  %39 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %40 = getelementptr inbounds [24 x i8*]* %39, i32 0, i64 %38
  %41 = load i8** %40, align 8
  call void @free(i8* %41) #1
  br label %42

; <label>:42                                      ; preds = %36, %30
  %43 = call i8* @mg_strdup(i8* %25)
  %44 = sext i32 %19 to i64
  %45 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %46 = getelementptr inbounds [24 x i8*]* %45, i32 0, i64 %44
  store i8* %43, i8** %46, align 8
  br label %10

; <label>:47                                      ; preds = %16
  br label %48

; <label>:48                                      ; preds = %73, %47
  %i.0 = phi i32 [ 0, %47 ], [ %74, %73 ]
  %49 = mul nsw i32 %i.0, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [49 x i8*]* @config_options, i32 0, i64 %50
  %52 = load i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %75

; <label>:54                                      ; preds = %48
  %55 = mul nsw i32 %i.0, 2
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [49 x i8*]* @config_options, i32 0, i64 %57
  %59 = load i8** %58, align 8
  %60 = sext i32 %i.0 to i64
  %61 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %62 = getelementptr inbounds [24 x i8*]* %61, i32 0, i64 %60
  %63 = load i8** %62, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %72

; <label>:65                                      ; preds = %54
  %66 = icmp ne i8* %59, null
  br i1 %66, label %67, label %72

; <label>:67                                      ; preds = %65
  %68 = call i8* @mg_strdup(i8* %59)
  %69 = sext i32 %i.0 to i64
  %70 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %71 = getelementptr inbounds [24 x i8*]* %70, i32 0, i64 %69
  store i8* %68, i8** %71, align 8
  br label %72

; <label>:72                                      ; preds = %67, %65, %54
  br label %73

; <label>:73                                      ; preds = %72
  %74 = add nsw i32 %i.0, 1
  br label %48

; <label>:75                                      ; preds = %48
  %76 = call i32 @set_gpass_option(%struct.mg_context* %2)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

; <label>:78                                      ; preds = %75
  %79 = call i32 @set_ssl_option(%struct.mg_context* %2)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

; <label>:81                                      ; preds = %78
  %82 = call i32 @set_ports_option(%struct.mg_context* %2)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

; <label>:84                                      ; preds = %81
  %85 = call i32 @set_uid_option(%struct.mg_context* %2)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

; <label>:87                                      ; preds = %84
  %88 = call i32 @set_acl_option(%struct.mg_context* %2)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

; <label>:90                                      ; preds = %87, %84, %81, %78, %75
  call void @free_context(%struct.mg_context* %2)
  br label %126

; <label>:91                                      ; preds = %87
  %92 = call void (i32)* (i32, void (i32)*)* @__sysv_signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #1
  %93 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 8
  %94 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %93, %union.pthread_mutexattr_t* null) #1
  %95 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 9
  %96 = call i32 @pthread_cond_init(%union.pthread_cond_t* %95, %union.pthread_condattr_t* null) #1
  %97 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 14
  %98 = call i32 @pthread_cond_init(%union.pthread_cond_t* %97, %union.pthread_condattr_t* null) #1
  %99 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 13
  %100 = call i32 @pthread_cond_init(%union.pthread_cond_t* %99, %union.pthread_condattr_t* null) #1
  %101 = bitcast %struct.mg_context* %2 to i8*
  %102 = call i32 @mg_start_thread(i8* (i8*)* @master_thread, i8* %101)
  br label %103

; <label>:103                                     ; preds = %123, %91
  %i.1 = phi i32 [ 0, %91 ], [ %124, %123 ]
  %104 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %105 = getelementptr inbounds [24 x i8*]* %104, i32 0, i64 19
  %106 = load i8** %105, align 8
  %107 = call i32 @atoi(i8* %106) #3
  %108 = icmp slt i32 %i.1, %107
  br i1 %108, label %109, label %125

; <label>:109                                     ; preds = %103
  %110 = bitcast %struct.mg_context* %2 to i8*
  %111 = call i32 @mg_start_thread(i8* (i8*)* @worker_thread, i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

; <label>:113                                     ; preds = %109
  %114 = call %struct.mg_connection* @fc(%struct.mg_context* %2)
  %115 = call i32* @__errno_location() #2
  %116 = load i32* %115
  %117 = sext i32 %116 to i64
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %114, i8* getelementptr inbounds ([32 x i8]* @.str34, i32 0, i32 0), i64 %117)
  br label %122

; <label>:118                                     ; preds = %109
  %119 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 7
  %120 = load volatile i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store volatile i32 %121, i32* %119, align 4
  br label %122

; <label>:122                                     ; preds = %118, %113
  br label %123

; <label>:123                                     ; preds = %122
  %124 = add nsw i32 %i.1, 1
  br label %103

; <label>:125                                     ; preds = %103
  br label %126

; <label>:126                                     ; preds = %125, %90, %27, %21, %4
  %.0 = phi %struct.mg_context* [ null, %4 ], [ null, %21 ], [ null, %27 ], [ %2, %125 ], [ null, %90 ]
  ret %struct.mg_context* %.0
}

; Function Attrs: nounwind uwtable
define internal void @cry(%struct.mg_connection* %conn, i8* %fmt, ...) #0 {
  %buf = alloca [8192 x i8], align 16
  %src_addr = alloca [50 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %2 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.va_start(i8* %2)
  %3 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %5 = call i32 @vsnprintf(i8* %3, i64 8192, i8* %fmt, %struct.__va_list_tag* %4) #1
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_end(i8* %7)
  %8 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %9 = load %struct.mg_context** %8, align 8
  %10 = getelementptr inbounds %struct.mg_context* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.mg_callbacks* %10, i32 0, i32 2
  %12 = load i32 (%struct.mg_connection*, i8*)** %11, align 8
  %13 = icmp eq i32 (%struct.mg_connection*, i8*)* %12, null
  br i1 %13, label %23, label %14

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %16 = load %struct.mg_context** %15, align 8
  %17 = getelementptr inbounds %struct.mg_context* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.mg_callbacks* %17, i32 0, i32 2
  %19 = load i32 (%struct.mg_connection*, i8*)** %18, align 8
  %20 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %21 = call i32 %19(%struct.mg_connection* %conn, i8* %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %70

; <label>:23                                      ; preds = %14, %0
  %24 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %25 = load %struct.mg_context** %24, align 8
  %26 = icmp eq %struct.mg_context* %25, null
  br i1 %26, label %34, label %27

; <label>:27                                      ; preds = %23
  %28 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %29 = load %struct.mg_context** %28, align 8
  %30 = getelementptr inbounds %struct.mg_context* %29, i32 0, i32 2
  %31 = getelementptr inbounds [24 x i8*]* %30, i32 0, i64 10
  %32 = load i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %27, %23
  br label %42

; <label>:35                                      ; preds = %27
  %36 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %37 = load %struct.mg_context** %36, align 8
  %38 = getelementptr inbounds %struct.mg_context* %37, i32 0, i32 2
  %39 = getelementptr inbounds [24 x i8*]* %38, i32 0, i64 10
  %40 = load i8** %39, align 8
  %41 = call %struct._IO_FILE* @fopen(i8* %40, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0))
  br label %42

; <label>:42                                      ; preds = %35, %34
  %43 = phi %struct._IO_FILE* [ null, %34 ], [ %41, %35 ]
  %44 = icmp ne %struct._IO_FILE* %43, null
  br i1 %44, label %45, label %69

; <label>:45                                      ; preds = %42
  call void @flockfile(%struct._IO_FILE* %43) #1
  %46 = call i64 @time(i64* null) #1
  %47 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %48 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %49 = getelementptr inbounds %struct.socket* %48, i32 0, i32 2
  call void @sockaddr_to_string(i8* %47, i64 50, %union.usa* %49)
  %50 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([30 x i8]* @.str275, i32 0, i32 0), i64 %46, i8* %50)
  %52 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %53 = getelementptr inbounds %struct.mg_request_info* %52, i32 0, i32 0
  %54 = load i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %64

; <label>:56                                      ; preds = %45
  %57 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %58 = getelementptr inbounds %struct.mg_request_info* %57, i32 0, i32 0
  %59 = load i8** %58, align 8
  %60 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %61 = getelementptr inbounds %struct.mg_request_info* %60, i32 0, i32 1
  %62 = load i8** %61, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([8 x i8]* @.str276, i32 0, i32 0), i8* %59, i8* %62)
  br label %64

; <label>:64                                      ; preds = %56, %45
  %65 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %66 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %65)
  %67 = call i32 @fputc(i32 10, %struct._IO_FILE* %43)
  call void @funlockfile(%struct._IO_FILE* %43) #1
  %68 = call i32 @fclose(%struct._IO_FILE* %43)
  br label %69

; <label>:69                                      ; preds = %64, %42
  br label %70

; <label>:70                                      ; preds = %69, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.mg_connection* @fc(%struct.mg_context* %ctx) #0 {
  store %struct.mg_context* %ctx, %struct.mg_context** getelementptr inbounds (%struct.mg_connection* @fc.fake_connection, i32 0, i32 1), align 8
  ret %struct.mg_connection* @fc.fake_connection
}

; Function Attrs: nounwind uwtable
define internal i8* @mg_strdup(i8* %str) #0 {
  %1 = call i64 @strlen(i8* %str) #3
  %2 = call i8* @mg_strndup(i8* %str, i64 %1)
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal i32 @set_gpass_option(%struct.mg_context* %ctx) #0 {
  %file = alloca %struct.file, align 8
  %1 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = bitcast i8* %1 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %3 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %2, i32 0, i32 6
  %4 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %5 = getelementptr inbounds [24 x i8*]* %4, i32 0, i64 11
  %6 = load i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %17

; <label>:8                                       ; preds = %0
  %9 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %10 = call i32 @mg_stat(%struct.mg_connection* %9, i8* %6, %struct.file* %file)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

; <label>:12                                      ; preds = %8
  %13 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %14 = call i32* @__errno_location() #2
  %15 = load i32* %14
  %16 = call i8* @strerror(i32 %15) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %13, i8* getelementptr inbounds ([19 x i8]* @.str274, i32 0, i32 0), i8* %6, i8* %16)
  br label %18

; <label>:17                                      ; preds = %8, %0
  br label %18

; <label>:18                                      ; preds = %17, %12
  %.0 = phi i32 [ 1, %17 ], [ 0, %12 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @set_ssl_option(%struct.mg_context* %ctx) #0 {
  %1 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %2 = getelementptr inbounds [24 x i8*]* %1, i32 0, i64 18
  %3 = load i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 3
  %7 = getelementptr inbounds %struct.mg_callbacks* %6, i32 0, i32 3
  %8 = load i32 (i8*, i8*)** %7, align 8
  %9 = icmp eq i32 (i8*, i8*)* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %5
  br label %107

; <label>:11                                      ; preds = %5, %0
  %12 = call i32 @load_dll(%struct.mg_context* %ctx, i8* getelementptr inbounds ([10 x i8]* @.str268, i32 0, i32 0), %struct.ssl_func* getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i32 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %11
  %15 = call i32 @load_dll(%struct.mg_context* %ctx, i8* getelementptr inbounds ([13 x i8]* @.str269, i32 0, i32 0), %struct.ssl_func* getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i32 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

; <label>:17                                      ; preds = %14, %11
  br label %107

; <label>:18                                      ; preds = %14
  %19 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 10, i32 1), align 8
  %20 = bitcast void ()* %19 to i32 ()*
  %21 = call i32 %20()
  %22 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 15, i32 1), align 8
  call void %22()
  %23 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 8, i32 1), align 8
  %24 = bitcast void ()* %23 to %struct.ssl_ctx_st* (%struct.ssl_method_st*)*
  %25 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 9, i32 1), align 8
  %26 = bitcast void ()* %25 to %struct.ssl_method_st* ()*
  %27 = call %struct.ssl_method_st* %26()
  %28 = call %struct.ssl_ctx_st* %24(%struct.ssl_method_st* %27)
  %29 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 1
  store %struct.ssl_ctx_st* %28, %struct.ssl_ctx_st** %29, align 8
  %30 = icmp eq %struct.ssl_ctx_st* %28, null
  br i1 %30, label %31, label %34

; <label>:31                                      ; preds = %18
  %32 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %33 = call i8* @ssl_error()
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %32, i8* getelementptr inbounds ([31 x i8]* @.str270, i32 0, i32 0), i8* %33)
  br label %107

; <label>:34                                      ; preds = %18
  %35 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 3
  %36 = getelementptr inbounds %struct.mg_callbacks* %35, i32 0, i32 3
  %37 = load i32 (i8*, i8*)** %36, align 8
  %38 = icmp eq i32 (i8*, i8*)* %37, null
  br i1 %38, label %50, label %39

; <label>:39                                      ; preds = %34
  %40 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 3
  %41 = getelementptr inbounds %struct.mg_callbacks* %40, i32 0, i32 3
  %42 = load i32 (i8*, i8*)** %41, align 8
  %43 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 1
  %44 = load %struct.ssl_ctx_st** %43, align 8
  %45 = bitcast %struct.ssl_ctx_st* %44 to i8*
  %46 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 4
  %47 = load i8** %46, align 8
  %48 = call i32 %42(i8* %45, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

; <label>:50                                      ; preds = %39, %34
  %51 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 12, i32 1), align 8
  %52 = bitcast void ()* %51 to i32 (%struct.ssl_ctx_st*, i8*, i32)*
  %53 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 1
  %54 = load %struct.ssl_ctx_st** %53, align 8
  %55 = call i32 %52(%struct.ssl_ctx_st* %54, i8* %3, i32 1)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

; <label>:57                                      ; preds = %50
  %58 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 11, i32 1), align 8
  %59 = bitcast void ()* %58 to i32 (%struct.ssl_ctx_st*, i8*, i32)*
  %60 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 1
  %61 = load %struct.ssl_ctx_st** %60, align 8
  %62 = call i32 %59(%struct.ssl_ctx_st* %61, i8* %3, i32 1)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

; <label>:64                                      ; preds = %57, %50
  %65 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %66 = call i8* @ssl_error()
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %65, i8* getelementptr inbounds ([23 x i8]* @.str239, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @__func__.set_ssl_option, i32 0, i32 0), i8* %3, i8* %66)
  br label %107

; <label>:67                                      ; preds = %57, %39
  %68 = icmp ne i8* %3, null
  br i1 %68, label %69, label %75

; <label>:69                                      ; preds = %67
  %70 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 16, i32 1), align 8
  %71 = bitcast void ()* %70 to i32 (%struct.ssl_ctx_st*, i8*)*
  %72 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 1
  %73 = load %struct.ssl_ctx_st** %72, align 8
  %74 = call i32 %71(%struct.ssl_ctx_st* %73, i8* %3)
  br label %75

; <label>:75                                      ; preds = %69, %67
  %76 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 0, i32 1), align 8
  %77 = bitcast void ()* %76 to i32 ()*
  %78 = call i32 %77()
  %79 = sext i32 %78 to i64
  %80 = mul i64 40, %79
  %81 = trunc i64 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = call noalias i8* @malloc(i64 %82) #1
  %84 = bitcast i8* %83 to %union.pthread_mutex_t*
  store %union.pthread_mutex_t* %84, %union.pthread_mutex_t** @ssl_mutexes, align 8
  %85 = icmp eq %union.pthread_mutex_t* %84, null
  br i1 %85, label %86, label %89

; <label>:86                                      ; preds = %75
  %87 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %88 = call i8* @ssl_error()
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %87, i8* getelementptr inbounds ([32 x i8]* @.str271, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @__func__.set_ssl_option, i32 0, i32 0), i8* %88)
  br label %107

; <label>:89                                      ; preds = %75
  br label %90

; <label>:90                                      ; preds = %100, %89
  %i.0 = phi i32 [ 0, %89 ], [ %101, %100 ]
  %91 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 0, i32 1), align 8
  %92 = bitcast void ()* %91 to i32 ()*
  %93 = call i32 %92()
  %94 = icmp slt i32 %i.0, %93
  br i1 %94, label %95, label %102

; <label>:95                                      ; preds = %90
  %96 = sext i32 %i.0 to i64
  %97 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %98 = getelementptr inbounds %union.pthread_mutex_t* %97, i64 %96
  %99 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %98, %union.pthread_mutexattr_t* null) #1
  br label %100

; <label>:100                                     ; preds = %95
  %101 = add nsw i32 %i.0, 1
  br label %90

; <label>:102                                     ; preds = %90
  %103 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 1, i32 1), align 8
  %104 = bitcast void ()* %103 to void (void (i32, i32, i8*, i32)*)*
  call void %104(void (i32, i32, i8*, i32)* @ssl_locking_callback)
  %105 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 2, i32 1), align 8
  %106 = bitcast void ()* %105 to void (i64 ()*)*
  call void %106(i64 ()* @ssl_id_callback)
  br label %107

; <label>:107                                     ; preds = %102, %86, %64, %31, %17, %10
  %.0 = phi i32 [ 1, %10 ], [ 0, %31 ], [ 0, %64 ], [ 0, %86 ], [ 1, %102 ], [ 0, %17 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @set_ports_option(%struct.mg_context* %ctx) #0 {
  %on = alloca i32, align 4
  %vec = alloca %struct.vec, align 8
  %so = alloca %struct.socket, align 4
  %1 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %2 = getelementptr inbounds [24 x i8*]* %1, i32 0, i64 16
  %3 = load i8** %2, align 8
  store i32 1, i32* %on, align 4
  br label %4

; <label>:4                                       ; preds = %118, %0
  %list.0 = phi i8* [ %3, %0 ], [ %list.1, %118 ]
  %success.0 = phi i32 [ 1, %0 ], [ %success.4, %118 ]
  %5 = icmp ne i32 %success.0, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %4
  %7 = call i8* @next_option(i8* %list.0, %struct.vec* %vec, %struct.vec* null)
  %8 = icmp ne i8* %7, null
  br label %9

; <label>:9                                       ; preds = %6, %4
  %list.1 = phi i8* [ %7, %6 ], [ %list.0, %4 ]
  %10 = phi i1 [ false, %4 ], [ %8, %6 ]
  br i1 %10, label %11, label %119

; <label>:11                                      ; preds = %9
  %12 = call i32 @parse_port_string(%struct.vec* %vec, %struct.socket* %so)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

; <label>:14                                      ; preds = %11
  %15 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %16 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 1
  %17 = load i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %20 = load i8** %19, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %15, i8* getelementptr inbounds ([51 x i8]* @.str262, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @__func__.set_ports_option, i32 0, i32 0), i32 %18, i8* %20, i8* getelementptr inbounds ([23 x i8]* @.str263, i32 0, i32 0))
  br label %118

; <label>:21                                      ; preds = %11
  %22 = bitcast %struct.socket* %so to i8*
  %23 = getelementptr i8* %22, i32 36
  %24 = bitcast i8* %23 to i32*
  %25 = load i32* %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %21
  %29 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 1
  %30 = load %struct.ssl_ctx_st** %29, align 8
  %31 = icmp eq %struct.ssl_ctx_st* %30, null
  br i1 %31, label %32, label %34

; <label>:32                                      ; preds = %28
  %33 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %33, i8* getelementptr inbounds ([55 x i8]* @.str264, i32 0, i32 0))
  br label %117

; <label>:34                                      ; preds = %28, %21
  %35 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %36 = bitcast %union.usa* %35 to %struct.sockaddr*
  %37 = getelementptr inbounds %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = call i32 @socket(i32 %39, i32 1, i32 6) #1
  %41 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = icmp eq i32 %40, -1
  br i1 %42, label %69, label %43

; <label>:43                                      ; preds = %34
  %44 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %45 = load i32* %44, align 4
  %46 = bitcast i32* %on to i8*
  %47 = call i32 @setsockopt(i32 %45, i32 1, i32 2, i8* %46, i32 4) #1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %69, label %49

; <label>:49                                      ; preds = %43
  %50 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %51 = load i32* %50, align 4
  %52 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %53 = bitcast %union.usa* %52 to %struct.sockaddr*
  %54 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %55 = bitcast %union.usa* %54 to %struct.sockaddr*
  %56 = getelementptr inbounds %struct.sockaddr* %55, i32 0, i32 0
  %57 = load i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp eq i32 %58, 2
  %60 = select i1 %59, i64 16, i64 16
  %61 = trunc i64 %60 to i32
  %62 = call i32 @bind(i32 %51, %struct.sockaddr* %53, i32 %61) #1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

; <label>:64                                      ; preds = %49
  %65 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %66 = load i32* %65, align 4
  %67 = call i32 @listen(i32 %66, i32 128) #1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

; <label>:69                                      ; preds = %64, %49, %43, %34
  %70 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %71 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 1
  %72 = load i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %75 = load i8** %74, align 8
  %76 = call i32* @__errno_location() #2
  %77 = load i32* %76
  %78 = call i32* @__errno_location() #2
  %79 = load i32* %78
  %80 = call i8* @strerror(i32 %79) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %70, i8* getelementptr inbounds ([33 x i8]* @.str265, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @__func__.set_ports_option, i32 0, i32 0), i32 %73, i8* %75, i32 %77, i8* %80)
  %81 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %82 = load i32* %81, align 4
  %83 = call i32 @close(i32 %82)
  br label %116

; <label>:84                                      ; preds = %64
  %85 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 5
  %86 = load %struct.socket** %85, align 8
  %87 = bitcast %struct.socket* %86 to i8*
  %88 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 6
  %89 = load i32* %88, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 40
  %93 = call i8* @realloc(i8* %87, i64 %92) #1
  %94 = bitcast i8* %93 to %struct.socket*
  %95 = icmp eq %struct.socket* %94, null
  br i1 %95, label %96, label %100

; <label>:96                                      ; preds = %84
  %97 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %98 = load i32* %97, align 4
  %99 = call i32 @close(i32 %98)
  br label %115

; <label>:100                                     ; preds = %84
  %101 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %102 = load i32* %101, align 4
  call void @set_close_on_exec(i32 %102)
  %103 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 5
  store %struct.socket* %94, %struct.socket** %103, align 8
  %104 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 6
  %105 = load i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 5
  %108 = load %struct.socket** %107, align 8
  %109 = getelementptr inbounds %struct.socket* %108, i64 %106
  %110 = bitcast %struct.socket* %109 to i8*
  %111 = bitcast %struct.socket* %so to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %110, i8* %111, i64 40, i32 4, i1 false)
  %112 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 6
  %113 = load i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

; <label>:115                                     ; preds = %100, %96
  %success.1 = phi i32 [ 0, %96 ], [ %success.0, %100 ]
  br label %116

; <label>:116                                     ; preds = %115, %69
  %success.2 = phi i32 [ 0, %69 ], [ %success.1, %115 ]
  br label %117

; <label>:117                                     ; preds = %116, %32
  %success.3 = phi i32 [ 0, %32 ], [ %success.2, %116 ]
  br label %118

; <label>:118                                     ; preds = %117, %14
  %success.4 = phi i32 [ %success.3, %117 ], [ 0, %14 ]
  br label %4

; <label>:119                                     ; preds = %9
  %120 = icmp ne i32 %success.0, 0
  br i1 %120, label %122, label %121

; <label>:121                                     ; preds = %119
  call void @close_all_listening_sockets(%struct.mg_context* %ctx)
  br label %122

; <label>:122                                     ; preds = %121, %119
  ret i32 %success.0
}

; Function Attrs: nounwind uwtable
define internal i32 @set_uid_option(%struct.mg_context* %ctx) #0 {
  %1 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %2 = getelementptr inbounds [24 x i8*]* %1, i32 0, i64 20
  %3 = load i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %35

; <label>:6                                       ; preds = %0
  %7 = call %struct.passwd* @getpwnam(i8* %3)
  %8 = icmp eq %struct.passwd* %7, null
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6
  %10 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %10, i8* getelementptr inbounds ([22 x i8]* @.str259, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @__func__.set_uid_option, i32 0, i32 0), i8* %3)
  br label %34

; <label>:11                                      ; preds = %6
  %12 = getelementptr inbounds %struct.passwd* %7, i32 0, i32 3
  %13 = load i32* %12, align 4
  %14 = call i32 @setgid(i32 %13) #1
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %11
  %17 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %18 = call i32* @__errno_location() #2
  %19 = load i32* %18
  %20 = call i8* @strerror(i32 %19) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %17, i8* getelementptr inbounds ([19 x i8]* @.str260, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @__func__.set_uid_option, i32 0, i32 0), i8* %3, i8* %20)
  br label %33

; <label>:21                                      ; preds = %11
  %22 = getelementptr inbounds %struct.passwd* %7, i32 0, i32 2
  %23 = load i32* %22, align 4
  %24 = call i32 @setuid(i32 %23) #1
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %31

; <label>:26                                      ; preds = %21
  %27 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %28 = call i32* @__errno_location() #2
  %29 = load i32* %28
  %30 = call i8* @strerror(i32 %29) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %27, i8* getelementptr inbounds ([19 x i8]* @.str261, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @__func__.set_uid_option, i32 0, i32 0), i8* %3, i8* %30)
  br label %32

; <label>:31                                      ; preds = %21
  br label %32

; <label>:32                                      ; preds = %31, %26
  %success.0 = phi i32 [ 0, %26 ], [ 1, %31 ]
  br label %33

; <label>:33                                      ; preds = %32, %16
  %success.1 = phi i32 [ 0, %16 ], [ %success.0, %32 ]
  br label %34

; <label>:34                                      ; preds = %33, %9
  %success.2 = phi i32 [ 0, %9 ], [ %success.1, %33 ]
  br label %35

; <label>:35                                      ; preds = %34, %5
  %success.3 = phi i32 [ 1, %5 ], [ %success.2, %34 ]
  ret i32 %success.3
}

; Function Attrs: nounwind uwtable
define internal i32 @set_acl_option(%struct.mg_context* %ctx) #0 {
  %1 = call i32 @check_acl(%struct.mg_context* %ctx, i32 2130706433)
  %2 = icmp ne i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind
declare void (i32)* @__sysv_signal(i32, void (i32)*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #1

; Function Attrs: nounwind uwtable
define internal i8* @master_thread(i8* %thread_func_param) #0 {
  %1 = bitcast i8* %thread_func_param to %struct.mg_context*
  %2 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mg_callbacks* %2, i32 0, i32 10
  %4 = load void (i8*, i8**)** %3, align 8
  %5 = icmp ne void (i8*, i8**)* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.mg_callbacks* %7, i32 0, i32 10
  %9 = load void (i8*, i8**)** %8, align 8
  %10 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 4
  %11 = bitcast i8** %10 to i8*
  call void %9(i8* %11, i8** null)
  br label %12

; <label>:12                                      ; preds = %6, %0
  %13 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 6
  %14 = load i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = call noalias i8* @calloc(i64 %15, i64 8) #1
  %17 = bitcast i8* %16 to %struct.pollfd*
  br label %18

; <label>:18                                      ; preds = %78, %12
  %19 = icmp ne %struct.pollfd* %17, null
  br i1 %19, label %20, label %24

; <label>:20                                      ; preds = %18
  %21 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 0
  %22 = load volatile i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i1 [ false, %18 ], [ %23, %20 ]
  br i1 %25, label %26, label %79

; <label>:26                                      ; preds = %24
  br label %27

; <label>:27                                      ; preds = %44, %26
  %i.0 = phi i32 [ 0, %26 ], [ %45, %44 ]
  %28 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 6
  %29 = load i32* %28, align 4
  %30 = icmp slt i32 %i.0, %29
  br i1 %30, label %31, label %46

; <label>:31                                      ; preds = %27
  %32 = sext i32 %i.0 to i64
  %33 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 5
  %34 = load %struct.socket** %33, align 8
  %35 = getelementptr inbounds %struct.socket* %34, i64 %32
  %36 = getelementptr inbounds %struct.socket* %35, i32 0, i32 0
  %37 = load i32* %36, align 4
  %38 = sext i32 %i.0 to i64
  %39 = getelementptr inbounds %struct.pollfd* %17, i64 %38
  %40 = getelementptr inbounds %struct.pollfd* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = sext i32 %i.0 to i64
  %42 = getelementptr inbounds %struct.pollfd* %17, i64 %41
  %43 = getelementptr inbounds %struct.pollfd* %42, i32 0, i32 1
  store i16 1, i16* %43, align 2
  br label %44

; <label>:44                                      ; preds = %31
  %45 = add nsw i32 %i.0, 1
  br label %27

; <label>:46                                      ; preds = %27
  %47 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 6
  %48 = load i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 @poll(%struct.pollfd* %17, i64 %49, i32 200)
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %78

; <label>:52                                      ; preds = %46
  br label %53

; <label>:53                                      ; preds = %75, %52
  %i.1 = phi i32 [ 0, %52 ], [ %76, %75 ]
  %54 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 6
  %55 = load i32* %54, align 4
  %56 = icmp slt i32 %i.1, %55
  br i1 %56, label %57, label %77

; <label>:57                                      ; preds = %53
  %58 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 0
  %59 = load volatile i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %74

; <label>:61                                      ; preds = %57
  %62 = sext i32 %i.1 to i64
  %63 = getelementptr inbounds %struct.pollfd* %17, i64 %62
  %64 = getelementptr inbounds %struct.pollfd* %63, i32 0, i32 2
  %65 = load i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

; <label>:69                                      ; preds = %61
  %70 = sext i32 %i.1 to i64
  %71 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 5
  %72 = load %struct.socket** %71, align 8
  %73 = getelementptr inbounds %struct.socket* %72, i64 %70
  call void @accept_new_connection(%struct.socket* %73, %struct.mg_context* %1)
  br label %74

; <label>:74                                      ; preds = %69, %61, %57
  br label %75

; <label>:75                                      ; preds = %74
  %76 = add nsw i32 %i.1, 1
  br label %53

; <label>:77                                      ; preds = %53
  br label %78

; <label>:78                                      ; preds = %77, %46
  br label %18

; <label>:79                                      ; preds = %24
  %80 = bitcast %struct.pollfd* %17 to i8*
  call void @free(i8* %80) #1
  call void @close_all_listening_sockets(%struct.mg_context* %1)
  %81 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 13
  %82 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* %81) #1
  %83 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 8
  %84 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %83) #1
  br label %85

; <label>:85                                      ; preds = %89, %79
  %86 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 7
  %87 = load volatile i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %93

; <label>:89                                      ; preds = %85
  %90 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 9
  %91 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 8
  %92 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %90, %union.pthread_mutex_t* %91)
  br label %85

; <label>:93                                      ; preds = %85
  %94 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 8
  %95 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %94) #1
  %96 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 8
  %97 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %96) #1
  %98 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 9
  %99 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %98) #1
  %100 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 14
  %101 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %100) #1
  %102 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 13
  %103 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* %102) #1
  call void @uninitialize_ssl(%struct.mg_context* %1)
  %104 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 3
  %105 = getelementptr inbounds %struct.mg_callbacks* %104, i32 0, i32 11
  %106 = load void (i8*, i8**)** %105, align 8
  %107 = icmp ne void (i8*, i8**)* %106, null
  br i1 %107, label %108, label %114

; <label>:108                                     ; preds = %93
  %109 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 3
  %110 = getelementptr inbounds %struct.mg_callbacks* %109, i32 0, i32 11
  %111 = load void (i8*, i8**)** %110, align 8
  %112 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 4
  %113 = bitcast i8** %112 to i8*
  call void %111(i8* %113, i8** null)
  br label %114

; <label>:114                                     ; preds = %108, %93
  %115 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 0
  store volatile i32 2, i32* %115, align 4
  ret i8* null
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @worker_thread(i8* %thread_func_param) #0 {
  %1 = bitcast i8* %thread_func_param to %struct.mg_context*
  %2 = call noalias i8* @calloc(i64 1, i64 17640) #1
  %3 = bitcast i8* %2 to %struct.mg_connection*
  %4 = icmp eq %struct.mg_connection* %3, null
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = call %struct.mg_connection* @fc(%struct.mg_context* %1)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %6, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8]* @.str35, i32 0, i32 0))
  br label %106

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 12
  store i32 16384, i32* %8, align 4
  %9 = getelementptr inbounds %struct.mg_connection* %3, i64 1
  %10 = bitcast %struct.mg_connection* %9 to i8*
  %11 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 9
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 1
  store %struct.mg_context* %1, %struct.mg_context** %12, align 8
  %13 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 4
  %14 = load i8** %13, align 8
  %15 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %16 = getelementptr inbounds %struct.mg_request_info* %15, i32 0, i32 8
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 3
  %18 = getelementptr inbounds %struct.mg_callbacks* %17, i32 0, i32 10
  %19 = load void (i8*, i8**)** %18, align 8
  %20 = icmp ne void (i8*, i8**)* %19, null
  br i1 %20, label %21, label %30

; <label>:21                                      ; preds = %7
  %22 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 3
  %23 = getelementptr inbounds %struct.mg_callbacks* %22, i32 0, i32 10
  %24 = load void (i8*, i8**)** %23, align 8
  %25 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %26 = getelementptr inbounds %struct.mg_request_info* %25, i32 0, i32 8
  %27 = bitcast i8** %26 to i8*
  %28 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %29 = getelementptr inbounds %struct.mg_request_info* %28, i32 0, i32 9
  call void %24(i8* %27, i8** %29)
  br label %30

; <label>:30                                      ; preds = %21, %7
  br label %31

; <label>:31                                      ; preds = %89, %30
  %32 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 4
  %33 = call i32 @consume_socket(%struct.mg_context* %1, %struct.socket* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %90

; <label>:35                                      ; preds = %31
  %36 = call i64 @time(i64* null) #1
  %37 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 5
  store i64 %36, i64* %37, align 8
  %38 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 4
  %39 = getelementptr inbounds %struct.socket* %38, i32 0, i32 2
  %40 = bitcast %union.usa* %39 to %struct.sockaddr_in*
  %41 = getelementptr inbounds %struct.sockaddr_in* %40, i32 0, i32 1
  %42 = load i16* %41, align 2
  %43 = call zeroext i16 @ntohs(i16 zeroext %42) #2
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %46 = getelementptr inbounds %struct.mg_request_info* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %48 = getelementptr inbounds %struct.mg_request_info* %47, i32 0, i32 5
  %49 = bitcast i64* %48 to i8*
  %50 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 4
  %51 = getelementptr inbounds %struct.socket* %50, i32 0, i32 2
  %52 = bitcast %union.usa* %51 to %struct.sockaddr_in*
  %53 = getelementptr inbounds %struct.sockaddr_in* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.in_addr* %53, i32 0, i32 0
  %55 = bitcast i32* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %55, i64 4, i32 1, i1 false)
  %56 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %57 = getelementptr inbounds %struct.mg_request_info* %56, i32 0, i32 5
  %58 = load i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @ntohl(i32 %59) #2
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %63 = getelementptr inbounds %struct.mg_request_info* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  %64 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 4
  %65 = bitcast %struct.socket* %64 to i8*
  %66 = getelementptr i8* %65, i32 36
  %67 = bitcast i8* %66 to i32*
  %68 = load i32* %67, align 4
  %69 = and i32 %68, 1
  %70 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %71 = getelementptr inbounds %struct.mg_request_info* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 4
  %73 = bitcast %struct.socket* %72 to i8*
  %74 = getelementptr i8* %73, i32 36
  %75 = bitcast i8* %74 to i32*
  %76 = load i32* %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

; <label>:79                                      ; preds = %35
  %80 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 1
  %81 = load %struct.mg_context** %80, align 8
  %82 = getelementptr inbounds %struct.mg_context* %81, i32 0, i32 1
  %83 = load %struct.ssl_ctx_st** %82, align 8
  %84 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 1, i32 1), align 8
  %85 = bitcast void ()* %84 to i32 (%struct.ssl_st*)*
  %86 = call i32 @sslize(%struct.mg_connection* %3, %struct.ssl_ctx_st* %83, i32 (%struct.ssl_st*)* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %79, %35
  call void @process_new_connection(%struct.mg_connection* %3)
  br label %89

; <label>:89                                      ; preds = %88, %79
  call void @close_connection(%struct.mg_connection* %3)
  br label %31

; <label>:90                                      ; preds = %31
  %91 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 3
  %92 = getelementptr inbounds %struct.mg_callbacks* %91, i32 0, i32 11
  %93 = load void (i8*, i8**)** %92, align 8
  %94 = icmp ne void (i8*, i8**)* %93, null
  br i1 %94, label %95, label %104

; <label>:95                                      ; preds = %90
  %96 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 3
  %97 = getelementptr inbounds %struct.mg_callbacks* %96, i32 0, i32 11
  %98 = load void (i8*, i8**)** %97, align 8
  %99 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %100 = getelementptr inbounds %struct.mg_request_info* %99, i32 0, i32 8
  %101 = bitcast i8** %100 to i8*
  %102 = getelementptr inbounds %struct.mg_connection* %3, i32 0, i32 0
  %103 = getelementptr inbounds %struct.mg_request_info* %102, i32 0, i32 9
  call void %98(i8* %101, i8** %103)
  br label %104

; <label>:104                                     ; preds = %95, %90
  %105 = bitcast %struct.mg_connection* %3 to i8*
  call void @free(i8* %105) #1
  br label %106

; <label>:106                                     ; preds = %104, %5
  %107 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 8
  %108 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %107) #1
  %109 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 7
  %110 = load volatile i32* %109, align 4
  %111 = add nsw i32 %110, -1
  store volatile i32 %111, i32* %109, align 4
  %112 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 9
  %113 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %112) #1
  %114 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 7
  %115 = load volatile i32* %114, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %106
  br label %120

; <label>:118                                     ; preds = %106
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 5202, i8* getelementptr inbounds ([28 x i8]* @__PRETTY_FUNCTION__.worker_thread, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %120

; <label>:120                                     ; preds = %119, %117
  %121 = getelementptr inbounds %struct.mg_context* %1, i32 0, i32 8
  %122 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %121) #1
  ret i8* null
}

; Function Attrs: nounwind uwtable
define internal i32 @consume_socket(%struct.mg_context* %ctx, %struct.socket* %sp) #0 {
  %1 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 8
  %2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %1) #1
  br label %3

; <label>:3                                       ; preds = %15, %0
  %4 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 11
  %5 = load volatile i32* %4, align 4
  %6 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 12
  %7 = load volatile i32* %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %3
  %10 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 0
  %11 = load volatile i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br label %13

; <label>:13                                      ; preds = %9, %3
  %14 = phi i1 [ false, %3 ], [ %12, %9 ]
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 13
  %17 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 8
  %18 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %16, %union.pthread_mutex_t* %17)
  br label %3

; <label>:19                                      ; preds = %13
  %20 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 11
  %21 = load volatile i32* %20, align 4
  %22 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 12
  %23 = load volatile i32* %22, align 4
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %53

; <label>:25                                      ; preds = %19
  %26 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 12
  %27 = load volatile i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = urem i64 %28, 20
  %30 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 10
  %31 = getelementptr inbounds [20 x %struct.socket]* %30, i32 0, i64 %29
  %32 = bitcast %struct.socket* %sp to i8*
  %33 = bitcast %struct.socket* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 40, i32 4, i1 false)
  %34 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 12
  %35 = load volatile i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store volatile i32 %36, i32* %34, align 4
  br label %37

; <label>:37                                      ; preds = %41, %25
  %38 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 12
  %39 = load volatile i32* %38, align 4
  %40 = icmp sgt i32 %39, 20
  br i1 %40, label %41, label %52

; <label>:41                                      ; preds = %37
  %42 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 12
  %43 = load volatile i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, 20
  %46 = trunc i64 %45 to i32
  store volatile i32 %46, i32* %42, align 4
  %47 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 11
  %48 = load volatile i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %49, 20
  %51 = trunc i64 %50 to i32
  store volatile i32 %51, i32* %47, align 4
  br label %37

; <label>:52                                      ; preds = %37
  br label %53

; <label>:53                                      ; preds = %52, %19
  %54 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 14
  %55 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %54) #1
  %56 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 8
  %57 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %56) #1
  %58 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 0
  %59 = load volatile i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  ret i32 %62
}

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #2

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #2

; Function Attrs: nounwind uwtable
define internal void @process_new_connection(%struct.mg_connection* %conn) #0 {
  %ebuf = alloca [100 x i8], align 16
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %2 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %3 = load %struct.mg_context** %2, align 8
  %4 = getelementptr inbounds %struct.mg_context* %3, i32 0, i32 2
  %5 = getelementptr inbounds [24 x i8*]* %4, i32 0, i64 13
  %6 = load i8** %5, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0)) #3
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  store i32 0, i32* %11, align 4
  br label %12

; <label>:12                                      ; preds = %161, %0
  %13 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  %14 = call i32 @getreq(%struct.mg_connection* %conn, i8* %13, i64 100)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

; <label>:16                                      ; preds = %12
  %17 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* getelementptr inbounds ([13 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %17)
  %18 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 11
  store i32 1, i32* %18, align 4
  br label %49

; <label>:19                                      ; preds = %12
  %20 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %21 = getelementptr inbounds %struct.mg_request_info* %20, i32 0, i32 1
  %22 = load i8** %21, align 8
  %23 = call i32 @is_valid_uri(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

; <label>:25                                      ; preds = %19
  %26 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  %27 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %28 = load i8** %27, align 8
  %29 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %26, i64 100, i8* getelementptr inbounds ([18 x i8]* @.str39, i32 0, i32 0), i8* %28) #1
  %30 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 400, i8* getelementptr inbounds ([12 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %30)
  br label %48

; <label>:31                                      ; preds = %19
  %32 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 2
  %33 = load i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0)) #3
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

; <label>:36                                      ; preds = %31
  %37 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 2
  %38 = load i8** %37, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8]* @.str42, i32 0, i32 0)) #3
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

; <label>:41                                      ; preds = %36
  %42 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  %43 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 2
  %44 = load i8** %43, align 8
  %45 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %42, i64 100, i8* getelementptr inbounds ([23 x i8]* @.str43, i32 0, i32 0), i8* %44) #1
  %46 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i32 0
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 505, i8* getelementptr inbounds ([17 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %46)
  br label %47

; <label>:47                                      ; preds = %41, %36, %31
  br label %48

; <label>:48                                      ; preds = %47, %25
  br label %49

; <label>:49                                      ; preds = %48, %16
  %50 = getelementptr inbounds [100 x i8]* %ebuf, i32 0, i64 0
  %51 = load i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %70

; <label>:54                                      ; preds = %49
  call void @handle_request(%struct.mg_connection* %conn)
  %55 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %56 = load %struct.mg_context** %55, align 8
  %57 = getelementptr inbounds %struct.mg_context* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.mg_callbacks* %57, i32 0, i32 1
  %59 = load void (%struct.mg_connection*, i32)** %58, align 8
  %60 = icmp ne void (%struct.mg_connection*, i32)* %59, null
  br i1 %60, label %61, label %69

; <label>:61                                      ; preds = %54
  %62 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %63 = load %struct.mg_context** %62, align 8
  %64 = getelementptr inbounds %struct.mg_context* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.mg_callbacks* %64, i32 0, i32 1
  %66 = load void (%struct.mg_connection*, i32)** %65, align 8
  %67 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  %68 = load i32* %67, align 4
  call void %66(%struct.mg_connection* %conn, i32 %68)
  br label %69

; <label>:69                                      ; preds = %61, %54
  call void @log_access(%struct.mg_connection* %conn)
  br label %70

; <label>:70                                      ; preds = %69, %49
  %71 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 4
  %72 = load i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

; <label>:74                                      ; preds = %70
  %75 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 4
  %76 = load i8** %75, align 8
  call void @free(i8* %76) #1
  %77 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 4
  store i8* null, i8** %77, align 8
  br label %78

; <label>:78                                      ; preds = %74, %70
  %79 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %80 = load %struct.mg_context** %79, align 8
  %81 = getelementptr inbounds %struct.mg_context* %80, i32 0, i32 0
  %82 = load volatile i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

; <label>:84                                      ; preds = %78
  %85 = icmp ne i32 %10, 0
  br i1 %85, label %86, label %93

; <label>:86                                      ; preds = %84
  %87 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %88 = load i64* %87, align 8
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %93

; <label>:90                                      ; preds = %86
  %91 = call i32 @should_keep_alive(%struct.mg_connection* %conn)
  %92 = icmp ne i32 %91, 0
  br label %93

; <label>:93                                      ; preds = %90, %86, %84, %78
  %94 = phi i1 [ false, %86 ], [ false, %84 ], [ false, %78 ], [ %92, %90 ]
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %97 = load i64* %96, align 8
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %122

; <label>:99                                      ; preds = %93
  %100 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  %101 = load i32* %100, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %122

; <label>:103                                     ; preds = %99
  %104 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  %105 = load i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %108 = load i64* %107, align 8
  %109 = add nsw i64 %106, %108
  %110 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %111 = load i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %122

; <label>:114                                     ; preds = %103
  %115 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  %116 = load i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %119 = load i64* %118, align 8
  %120 = add nsw i64 %117, %119
  %121 = trunc i64 %120 to i32
  br label %125

; <label>:122                                     ; preds = %103, %99, %93
  %123 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %124 = load i32* %123, align 4
  br label %125

; <label>:125                                     ; preds = %122, %114
  %126 = phi i32 [ %121, %114 ], [ %124, %122 ]
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %125
  br label %131

; <label>:129                                     ; preds = %125
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 5110, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.process_new_connection, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %131

; <label>:131                                     ; preds = %130, %128
  %132 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 9
  %133 = load i8** %132, align 8
  %134 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 9
  %135 = load i8** %134, align 8
  %136 = sext i32 %126 to i64
  %137 = getelementptr inbounds i8* %135, i64 %136
  %138 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %139 = load i32* %138, align 4
  %140 = sub nsw i32 %139, %126
  %141 = sext i32 %140 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %133, i8* %137, i64 %141, i32 1, i1 false)
  %142 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %143 = load i32* %142, align 4
  %144 = sub nsw i32 %143, %126
  store i32 %144, i32* %142, align 4
  %145 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %146 = load i32* %145, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %149

; <label>:148                                     ; preds = %131
  br label %151

; <label>:149                                     ; preds = %131
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 5113, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.process_new_connection, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %151

; <label>:151                                     ; preds = %150, %148
  %152 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %153 = load i32* %152, align 4
  %154 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 12
  %155 = load i32* %154, align 4
  %156 = icmp sle i32 %153, %155
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %151
  br label %160

; <label>:158                                     ; preds = %151
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 5114, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.process_new_connection, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %160

; <label>:160                                     ; preds = %159, %157
  br label %161

; <label>:161                                     ; preds = %160
  %162 = icmp ne i32 %95, 0
  br i1 %162, label %12, label %163

; <label>:163                                     ; preds = %161
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_valid_uri(i8* %uri) #0 {
  %1 = getelementptr inbounds i8* %uri, i64 0
  %2 = load i8* %1
  %3 = sext i8 %2 to i32
  %4 = icmp eq i32 %3, 47
  br i1 %4, label %17, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds i8* %uri, i64 0
  %7 = load i8* %6
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 42
  br i1 %9, label %10, label %15

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds i8* %uri, i64 1
  %12 = load i8* %11
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br label %15

; <label>:15                                      ; preds = %10, %5
  %16 = phi i1 [ false, %5 ], [ %14, %10 ]
  br label %17

; <label>:17                                      ; preds = %15, %0
  %18 = phi i1 [ true, %0 ], [ %16, %15 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @handle_request(%struct.mg_connection* %conn) #0 {
  %path = alloca [4096 x i8], align 16
  %file = alloca %struct.file, align 8
  %de = alloca %struct.de, align 8
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %2 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 48, i32 8, i1 false)
  %3 = bitcast i8* %2 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %4 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %3, i32 0, i32 6
  %5 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %6 = load i8** %5, align 8
  %7 = call i8* @strchr(i8* %6, i32 63) #3
  %8 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %9 = getelementptr inbounds %struct.mg_request_info* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = icmp ne i8* %7, null
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %13 = getelementptr inbounds %struct.mg_request_info* %12, i32 0, i32 3
  %14 = load i8** %13, align 8
  %15 = getelementptr inbounds i8* %14, i32 1
  store i8* %15, i8** %13, align 8
  store i8 0, i8* %14
  br label %16

; <label>:16                                      ; preds = %11, %0
  %17 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %18 = load i8** %17, align 8
  %19 = call i64 @strlen(i8* %18) #3
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %22 = load i8** %21, align 8
  %23 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %24 = load i8** %23, align 8
  %25 = add nsw i32 %20, 1
  %26 = call i32 @mg_url_decode(i8* %22, i32 %20, i8* %24, i32 %25, i32 0)
  %27 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %28 = load i8** %27, align 8
  call void @remove_double_dots_and_double_slashes(i8* %28)
  %29 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @convert_uri_to_file_name(%struct.mg_connection* %conn, i8* %29, i64 4096, %struct.file* %file)
  %30 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %31 = load %struct.mg_context** %30, align 8
  %32 = getelementptr inbounds %struct.mg_context* %31, i32 0, i32 2
  %33 = getelementptr inbounds [24 x i8*]* %32, i32 0, i64 7
  %34 = load i8** %33, align 8
  %35 = call i32 @get_remote_ip(%struct.mg_connection* %conn)
  %36 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %37 = load i8** %36, align 8
  %38 = call i32 @set_throttle(i8* %34, i32 %35, i8* %37)
  %39 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 16
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %41 = bitcast %struct.socket* %40 to i8*
  %42 = getelementptr i8* %41, i32 36
  %43 = bitcast i8* %42 to i32*
  %44 = load i32* %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

; <label>:47                                      ; preds = %16
  %48 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %49 = bitcast %struct.socket* %48 to i8*
  %50 = getelementptr i8* %49, i32 36
  %51 = bitcast i8* %50 to i32*
  %52 = load i32* %51, align 4
  %53 = lshr i32 %52, 1
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

; <label>:56                                      ; preds = %47
  %57 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %58 = load %struct.mg_context** %57, align 8
  %59 = call i32 @get_first_ssl_listener_index(%struct.mg_context* %58)
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %56
  call void @redirect_to_https_port(%struct.mg_connection* %conn, i32 %59)
  br label %300

; <label>:62                                      ; preds = %56, %47, %16
  %63 = call i32 @is_put_or_delete_request(%struct.mg_connection* %conn)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

; <label>:65                                      ; preds = %62
  %66 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %67 = call i32 @check_authorization(%struct.mg_connection* %conn, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

; <label>:69                                      ; preds = %65
  call void @send_authorization_request(%struct.mg_connection* %conn)
  br label %299

; <label>:70                                      ; preds = %65, %62
  %71 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %72 = load %struct.mg_context** %71, align 8
  %73 = getelementptr inbounds %struct.mg_context* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.mg_callbacks* %73, i32 0, i32 0
  %75 = load i32 (%struct.mg_connection*)** %74, align 8
  %76 = icmp ne i32 (%struct.mg_connection*)* %75, null
  br i1 %76, label %77, label %86

; <label>:77                                      ; preds = %70
  %78 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %79 = load %struct.mg_context** %78, align 8
  %80 = getelementptr inbounds %struct.mg_context* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.mg_callbacks* %80, i32 0, i32 0
  %82 = load i32 (%struct.mg_connection*)** %81, align 8
  %83 = call i32 %82(%struct.mg_connection* %conn)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %77
  br label %298

; <label>:86                                      ; preds = %77, %70
  %87 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %88 = load i8** %87, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([8 x i8]* @.str57, i32 0, i32 0)) #3
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

; <label>:91                                      ; preds = %86
  call void @send_options(%struct.mg_connection* %conn)
  br label %297

; <label>:92                                      ; preds = %86
  %93 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %94 = load %struct.mg_context** %93, align 8
  %95 = getelementptr inbounds %struct.mg_context* %94, i32 0, i32 2
  %96 = getelementptr inbounds [24 x i8*]* %95, i32 0, i64 17
  %97 = load i8** %96, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %92
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 404, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0))
  br label %296

; <label>:100                                     ; preds = %92
  %101 = call i32 @is_put_or_delete_request(%struct.mg_connection* %conn)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

; <label>:103                                     ; preds = %100
  %104 = call i32 @is_authorized_for_put(%struct.mg_connection* %conn)
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %107

; <label>:106                                     ; preds = %103
  call void @send_authorization_request(%struct.mg_connection* %conn)
  br label %295

; <label>:107                                     ; preds = %103, %100
  %108 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %109 = load i8** %108, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([4 x i8]* @.str58, i32 0, i32 0)) #3
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

; <label>:112                                     ; preds = %107
  %113 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @put_file(%struct.mg_connection* %conn, i8* %113)
  br label %294

; <label>:114                                     ; preds = %107
  %115 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %116 = load i8** %115, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8]* @.str59, i32 0, i32 0)) #3
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

; <label>:119                                     ; preds = %114
  %120 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @mkcol(%struct.mg_connection* %conn, i8* %120)
  br label %293

; <label>:121                                     ; preds = %114
  %122 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %123 = load i8** %122, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([7 x i8]* @.str60, i32 0, i32 0)) #3
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %167, label %126

; <label>:126                                     ; preds = %121
  %127 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %128 = bitcast %struct.file* %127 to i8*
  call void @llvm.memset.p0i8.i64(i8* %128, i8 0, i64 48, i32 1, i1 false)
  %129 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %130 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %131 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %129, %struct.file* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

; <label>:133                                     ; preds = %126
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 404, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str17, i32 0, i32 0))
  br label %166

; <label>:134                                     ; preds = %126
  %135 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %136 = getelementptr inbounds %struct.file* %135, i32 0, i32 1
  %137 = load i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %159

; <label>:139                                     ; preds = %134
  %140 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %141 = getelementptr inbounds %struct.file* %140, i32 0, i32 0
  %142 = load i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

; <label>:144                                     ; preds = %139
  %145 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %146 = call i32 @remove_directory(%struct.mg_connection* %conn, i8* %145)
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 204, i8* getelementptr inbounds ([11 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %158

; <label>:147                                     ; preds = %139
  %148 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %149 = call i32 @remove(i8* %148) #1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

; <label>:151                                     ; preds = %147
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 204, i8* getelementptr inbounds ([11 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %157

; <label>:152                                     ; preds = %147
  %153 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %154 = call i32* @__errno_location() #2
  %155 = load i32* %154
  %156 = call i8* @strerror(i32 %155) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 423, i8* getelementptr inbounds ([7 x i8]* @.str62, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str63, i32 0, i32 0), i8* %153, i8* %156)
  br label %157

; <label>:157                                     ; preds = %152, %151
  br label %158

; <label>:158                                     ; preds = %157, %144
  br label %165

; <label>:159                                     ; preds = %134
  %160 = load i8** @http_500_error, align 8
  %161 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %162 = call i32* @__errno_location() #2
  %163 = load i32* %162
  %164 = call i8* @strerror(i32 %163) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %160, i8* getelementptr inbounds ([15 x i8]* @.str63, i32 0, i32 0), i8* %161, i8* %164)
  br label %165

; <label>:165                                     ; preds = %159, %158
  br label %166

; <label>:166                                     ; preds = %165, %133
  br label %292

; <label>:167                                     ; preds = %121
  %168 = getelementptr inbounds %struct.file* %file, i32 0, i32 4
  %169 = load i8** %168, align 8
  %170 = icmp eq i8* %169, null
  br i1 %170, label %171, label %175

; <label>:171                                     ; preds = %167
  %172 = getelementptr inbounds %struct.file* %file, i32 0, i32 1
  %173 = load i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %179, label %175

; <label>:175                                     ; preds = %171, %167
  %176 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %177 = call i32 @must_hide_file(%struct.mg_connection* %conn, i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

; <label>:179                                     ; preds = %175, %171
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 404, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str17, i32 0, i32 0))
  br label %291

; <label>:180                                     ; preds = %175
  %181 = getelementptr inbounds %struct.file* %file, i32 0, i32 0
  %182 = load i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %197

; <label>:184                                     ; preds = %180
  %185 = sub nsw i32 %20, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %188 = load i8** %187, align 8
  %189 = getelementptr inbounds i8* %188, i64 %186
  %190 = load i8* %189
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 47
  br i1 %192, label %193, label %197

; <label>:193                                     ; preds = %184
  %194 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %195 = load i8** %194, align 8
  %196 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([50 x i8]* @.str64, i32 0, i32 0), i8* %195)
  br label %290

; <label>:197                                     ; preds = %184, %180
  %198 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %199 = load i8** %198, align 8
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([9 x i8]* @.str65, i32 0, i32 0)) #3
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

; <label>:202                                     ; preds = %197
  %203 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @handle_propfind(%struct.mg_connection* %conn, i8* %203, %struct.file* %file)
  br label %289

; <label>:204                                     ; preds = %197
  %205 = getelementptr inbounds %struct.file* %file, i32 0, i32 0
  %206 = load i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %224

; <label>:208                                     ; preds = %204
  %209 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %210 = call i32 @substitute_index_file(%struct.mg_connection* %conn, i8* %209, i64 4096, %struct.file* %file)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %224, label %212

; <label>:212                                     ; preds = %208
  %213 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %214 = load %struct.mg_context** %213, align 8
  %215 = getelementptr inbounds %struct.mg_context* %214, i32 0, i32 2
  %216 = getelementptr inbounds [24 x i8*]* %215, i32 0, i64 9
  %217 = load i8** %216, align 8
  %218 = call i32 @mg_strcasecmp(i8* %217, i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0))
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

; <label>:220                                     ; preds = %212
  %221 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @handle_directory_request(%struct.mg_connection* %conn, i8* %221)
  br label %223

; <label>:222                                     ; preds = %212
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 403, i8* getelementptr inbounds ([25 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str67, i32 0, i32 0))
  br label %223

; <label>:223                                     ; preds = %222, %220
  br label %288

; <label>:224                                     ; preds = %208, %204
  %225 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %226 = load %struct.mg_context** %225, align 8
  %227 = getelementptr inbounds %struct.mg_context* %226, i32 0, i32 2
  %228 = getelementptr inbounds [24 x i8*]* %227, i32 0, i64 0
  %229 = load i8** %228, align 8
  %230 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %231 = load %struct.mg_context** %230, align 8
  %232 = getelementptr inbounds %struct.mg_context* %231, i32 0, i32 2
  %233 = getelementptr inbounds [24 x i8*]* %232, i32 0, i64 0
  %234 = load i8** %233, align 8
  %235 = call i64 @strlen(i8* %234) #3
  %236 = trunc i64 %235 to i32
  %237 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %238 = call i32 @match_prefix(i8* %229, i32 %236, i8* %237)
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %261

; <label>:240                                     ; preds = %224
  %241 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %242 = load i8** %241, align 8
  %243 = call i32 @strcmp(i8* %242, i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0)) #3
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %258

; <label>:245                                     ; preds = %240
  %246 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %247 = load i8** %246, align 8
  %248 = call i32 @strcmp(i8* %247, i8* getelementptr inbounds ([5 x i8]* @.str69, i32 0, i32 0)) #3
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %258

; <label>:250                                     ; preds = %245
  %251 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %252 = load i8** %251, align 8
  %253 = call i32 @strcmp(i8* %252, i8* getelementptr inbounds ([4 x i8]* @.str70, i32 0, i32 0)) #3
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

; <label>:255                                     ; preds = %250
  %256 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %257 = load i8** %256, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 501, i8* getelementptr inbounds ([16 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8]* @.str72, i32 0, i32 0), i8* %257)
  br label %260

; <label>:258                                     ; preds = %250, %245, %240
  %259 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @handle_cgi_request(%struct.mg_connection* %conn, i8* %259)
  br label %260

; <label>:260                                     ; preds = %258, %255
  br label %287

; <label>:261                                     ; preds = %224
  %262 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %263 = load %struct.mg_context** %262, align 8
  %264 = getelementptr inbounds %struct.mg_context* %263, i32 0, i32 2
  %265 = getelementptr inbounds [24 x i8*]* %264, i32 0, i64 6
  %266 = load i8** %265, align 8
  %267 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %268 = load %struct.mg_context** %267, align 8
  %269 = getelementptr inbounds %struct.mg_context* %268, i32 0, i32 2
  %270 = getelementptr inbounds [24 x i8*]* %269, i32 0, i64 6
  %271 = load i8** %270, align 8
  %272 = call i64 @strlen(i8* %271) #3
  %273 = trunc i64 %272 to i32
  %274 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %275 = call i32 @match_prefix(i8* %266, i32 %273, i8* %274)
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %279

; <label>:277                                     ; preds = %261
  %278 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @handle_ssi_file_request(%struct.mg_connection* %conn, i8* %278)
  br label %286

; <label>:279                                     ; preds = %261
  %280 = call i32 @is_not_modified(%struct.mg_connection* %conn, %struct.file* %file)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

; <label>:282                                     ; preds = %279
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 304, i8* getelementptr inbounds ([13 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %285

; <label>:283                                     ; preds = %279
  %284 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  call void @handle_file_request(%struct.mg_connection* %conn, i8* %284, %struct.file* %file)
  br label %285

; <label>:285                                     ; preds = %283, %282
  br label %286

; <label>:286                                     ; preds = %285, %277
  br label %287

; <label>:287                                     ; preds = %286, %260
  br label %288

; <label>:288                                     ; preds = %287, %223
  br label %289

; <label>:289                                     ; preds = %288, %202
  br label %290

; <label>:290                                     ; preds = %289, %193
  br label %291

; <label>:291                                     ; preds = %290, %179
  br label %292

; <label>:292                                     ; preds = %291, %166
  br label %293

; <label>:293                                     ; preds = %292, %119
  br label %294

; <label>:294                                     ; preds = %293, %112
  br label %295

; <label>:295                                     ; preds = %294, %106
  br label %296

; <label>:296                                     ; preds = %295, %99
  br label %297

; <label>:297                                     ; preds = %296, %91
  br label %298

; <label>:298                                     ; preds = %297, %85
  br label %299

; <label>:299                                     ; preds = %298, %69
  br label %300

; <label>:300                                     ; preds = %299, %61
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @log_access(%struct.mg_connection* %conn) #0 {
  %date = alloca [64 x i8], align 16
  %src_addr = alloca [50 x i8], align 16
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %2 = load %struct.mg_context** %1, align 8
  %3 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %4 = getelementptr inbounds [24 x i8*]* %3, i32 0, i64 8
  %5 = load i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %15

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %10 = load %struct.mg_context** %9, align 8
  %11 = getelementptr inbounds %struct.mg_context* %10, i32 0, i32 2
  %12 = getelementptr inbounds [24 x i8*]* %11, i32 0, i64 8
  %13 = load i8** %12, align 8
  %14 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %8, %7
  %16 = phi %struct._IO_FILE* [ null, %7 ], [ %14, %8 ]
  %17 = icmp eq %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %15
  br label %67

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds [64 x i8]* %date, i32 0, i32 0
  %21 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 5
  %22 = call %struct.tm* @localtime(i64* %21) #1
  %23 = call i64 @strftime(i8* %20, i64 64, i8* getelementptr inbounds ([21 x i8]* @.str50, i32 0, i32 0), %struct.tm* %22) #1
  %24 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  call void @flockfile(%struct._IO_FILE* %16) #1
  %25 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %26 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %27 = getelementptr inbounds %struct.socket* %26, i32 0, i32 2
  call void @sockaddr_to_string(i8* %25, i64 50, %union.usa* %27)
  %28 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %29 = getelementptr inbounds %struct.mg_request_info* %24, i32 0, i32 4
  %30 = load i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %19
  br label %36

; <label>:33                                      ; preds = %19
  %34 = getelementptr inbounds %struct.mg_request_info* %24, i32 0, i32 4
  %35 = load i8** %34, align 8
  br label %36

; <label>:36                                      ; preds = %33, %32
  %37 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0), %32 ], [ %35, %33 ]
  %38 = getelementptr inbounds [64 x i8]* %date, i32 0, i32 0
  %39 = getelementptr inbounds %struct.mg_request_info* %24, i32 0, i32 0
  %40 = load i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %45

; <label>:42                                      ; preds = %36
  %43 = getelementptr inbounds %struct.mg_request_info* %24, i32 0, i32 0
  %44 = load i8** %43, align 8
  br label %46

; <label>:45                                      ; preds = %36
  br label %46

; <label>:46                                      ; preds = %45, %42
  %47 = phi i8* [ %44, %42 ], [ getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0), %45 ]
  %48 = getelementptr inbounds %struct.mg_request_info* %24, i32 0, i32 1
  %49 = load i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

; <label>:51                                      ; preds = %46
  %52 = getelementptr inbounds %struct.mg_request_info* %24, i32 0, i32 1
  %53 = load i8** %52, align 8
  br label %55

; <label>:54                                      ; preds = %46
  br label %55

; <label>:55                                      ; preds = %54, %51
  %56 = phi i8* [ %53, %51 ], [ getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0), %54 ]
  %57 = getelementptr inbounds %struct.mg_request_info* %24, i32 0, i32 2
  %58 = load i8** %57, align 8
  %59 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  %60 = load i32* %59, align 4
  %61 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %62 = load i64* %61, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([36 x i8]* @.str51, i32 0, i32 0), i8* %28, i8* %37, i8* %38, i8* %47, i8* %56, i8* %58, i32 %60, i64 %62)
  call void @log_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([8 x i8]* @.str53, i32 0, i32 0), %struct._IO_FILE* %16)
  call void @log_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([11 x i8]* @.str54, i32 0, i32 0), %struct._IO_FILE* %16)
  %64 = call i32 @fputc(i32 10, %struct._IO_FILE* %16)
  %65 = call i32 @fflush(%struct._IO_FILE* %16)
  call void @funlockfile(%struct._IO_FILE* %16) #1
  %66 = call i32 @fclose(%struct._IO_FILE* %16)
  br label %67

; <label>:67                                      ; preds = %55, %18
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @should_keep_alive(%struct.mg_connection* %conn) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %2 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 2
  %3 = load i8** %2, align 8
  %4 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([11 x i8]* @.str48, i32 0, i32 0))
  %5 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 11
  %6 = load i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %32, label %8

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  %10 = load i32* %9, align 4
  %11 = icmp eq i32 %10, 401
  br i1 %11, label %32, label %12

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %14 = load %struct.mg_context** %13, align 8
  %15 = getelementptr inbounds %struct.mg_context* %14, i32 0, i32 2
  %16 = getelementptr inbounds [24 x i8*]* %15, i32 0, i64 13
  %17 = load i8** %16, align 8
  %18 = call i32 @mg_strcasecmp(i8* %17, i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

; <label>:20                                      ; preds = %12
  %21 = icmp ne i8* %4, null
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %20
  %23 = call i32 @mg_strcasecmp(i8* %4, i8* getelementptr inbounds ([11 x i8]* @.str49, i32 0, i32 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

; <label>:25                                      ; preds = %22, %20
  %26 = icmp eq i8* %4, null
  br i1 %26, label %27, label %33

; <label>:27                                      ; preds = %25
  %28 = icmp ne i8* %3, null
  br i1 %28, label %29, label %33

; <label>:29                                      ; preds = %27
  %30 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str42, i32 0, i32 0)) #3
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %29, %22, %12, %8, %0
  br label %34

; <label>:33                                      ; preds = %29, %27, %25
  br label %34

; <label>:34                                      ; preds = %33, %32
  %.0 = phi i32 [ 0, %32 ], [ 1, %33 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: nounwind
declare void @flockfile(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @sockaddr_to_string(i8* %buf, i64 %len, %union.usa* %usa) #0 {
  %1 = getelementptr inbounds i8* %buf, i64 0
  store i8 0, i8* %1
  %2 = bitcast %union.usa* %usa to %struct.sockaddr*
  %3 = getelementptr inbounds %struct.sockaddr* %2, i32 0, i32 0
  %4 = load i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = bitcast %union.usa* %usa to %struct.sockaddr_in*
  %7 = getelementptr inbounds %struct.sockaddr_in* %6, i32 0, i32 2
  %8 = bitcast %struct.in_addr* %7 to i8*
  %9 = trunc i64 %len to i32
  %10 = call i8* @inet_ntop(i32 %5, i8* %8, i8* %buf, i32 %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @log_header(%struct.mg_connection* %conn, i8* %header, %struct._IO_FILE* %fp) #0 {
  %1 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* %header)
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str55, i32 0, i32 0))
  br label %7

; <label>:5                                       ; preds = %0
  %6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str56, i32 0, i32 0), i8* %1)
  br label %7

; <label>:7                                       ; preds = %5, %3
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*)

declare i32 @fflush(%struct._IO_FILE*)

; Function Attrs: nounwind
declare void @funlockfile(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @remove_double_dots_and_double_slashes(i8* %s) #0 {
  br label %1

; <label>:1                                       ; preds = %52, %0
  %p.0 = phi i8* [ %s, %0 ], [ %8, %52 ]
  %.0 = phi i8* [ %s, %0 ], [ %.3, %52 ]
  %2 = load i8* %.0
  %3 = sext i8 %2 to i32
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %53

; <label>:5                                       ; preds = %1
  %6 = getelementptr inbounds i8* %.0, i32 1
  %7 = load i8* %.0
  %8 = getelementptr inbounds i8* %p.0, i32 1
  store i8 %7, i8* %p.0
  %9 = getelementptr inbounds i8* %6, i64 -1
  %10 = load i8* %9
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 47
  br i1 %12, label %18, label %13

; <label>:13                                      ; preds = %5
  %14 = getelementptr inbounds i8* %6, i64 -1
  %15 = load i8* %14
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 92
  br i1 %17, label %18, label %52

; <label>:18                                      ; preds = %13, %5
  br label %19

; <label>:19                                      ; preds = %50, %18
  %.1 = phi i8* [ %6, %18 ], [ %.2, %50 ]
  %20 = getelementptr inbounds i8* %.1, i64 0
  %21 = load i8* %20
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

; <label>:24                                      ; preds = %19
  %25 = getelementptr inbounds i8* %.1, i64 0
  %26 = load i8* %25
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 47
  br i1 %28, label %34, label %29

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds i8* %.1, i64 0
  %31 = load i8* %30
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %36

; <label>:34                                      ; preds = %29, %24
  %35 = getelementptr inbounds i8* %.1, i32 1
  br label %50

; <label>:36                                      ; preds = %29
  %37 = getelementptr inbounds i8* %.1, i64 0
  %38 = load i8* %37
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %41, label %48

; <label>:41                                      ; preds = %36
  %42 = getelementptr inbounds i8* %.1, i64 1
  %43 = load i8* %42
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 46
  br i1 %45, label %46, label %48

; <label>:46                                      ; preds = %41
  %47 = getelementptr inbounds i8* %.1, i64 2
  br label %49

; <label>:48                                      ; preds = %41, %36
  br label %51

; <label>:49                                      ; preds = %46
  br label %50

; <label>:50                                      ; preds = %49, %34
  %.2 = phi i8* [ %35, %34 ], [ %47, %49 ]
  br label %19

; <label>:51                                      ; preds = %48, %19
  br label %52

; <label>:52                                      ; preds = %51, %13
  %.3 = phi i8* [ %.1, %51 ], [ %6, %13 ]
  br label %1

; <label>:53                                      ; preds = %1
  store i8 0, i8* %p.0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @convert_uri_to_file_name(%struct.mg_connection* %conn, i8* %buf, i64 %buf_len, %struct.file* %filep) #0 {
  %a = alloca %struct.vec, align 8
  %b = alloca %struct.vec, align 8
  %gz_path = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %2 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %3 = load i8** %2, align 8
  %4 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %5 = load %struct.mg_context** %4, align 8
  %6 = getelementptr inbounds %struct.mg_context* %5, i32 0, i32 2
  %7 = getelementptr inbounds [24 x i8*]* %6, i32 0, i64 17
  %8 = load i8** %7, align 8
  %9 = sub i64 %buf_len, 1
  %10 = icmp eq i8* %8, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %0
  br label %13

; <label>:12                                      ; preds = %0
  br label %13

; <label>:13                                      ; preds = %12, %11
  %14 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %11 ], [ %8, %12 ]
  %15 = icmp eq i8* %8, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %13
  br label %18

; <label>:17                                      ; preds = %13
  br label %18

; <label>:18                                      ; preds = %17, %16
  %19 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %16 ], [ %3, %17 ]
  %20 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %buf, i64 %9, i8* getelementptr inbounds ([5 x i8]* @.str206, i32 0, i32 0), i8* %14, i8* %19)
  %21 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %22 = load %struct.mg_context** %21, align 8
  %23 = getelementptr inbounds %struct.mg_context* %22, i32 0, i32 2
  %24 = getelementptr inbounds [24 x i8*]* %23, i32 0, i64 21
  %25 = load i8** %24, align 8
  br label %26

; <label>:26                                      ; preds = %47, %18
  %rewrite.0 = phi i8* [ %25, %18 ], [ %27, %47 ]
  %27 = call i8* @next_option(i8* %rewrite.0, %struct.vec* %a, %struct.vec* %b)
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %48

; <label>:29                                      ; preds = %26
  %30 = getelementptr inbounds %struct.vec* %a, i32 0, i32 0
  %31 = load i8** %30, align 8
  %32 = getelementptr inbounds %struct.vec* %a, i32 0, i32 1
  %33 = load i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @match_prefix(i8* %31, i32 %34, i8* %3)
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %47

; <label>:37                                      ; preds = %29
  %38 = sub i64 %buf_len, 1
  %39 = getelementptr inbounds %struct.vec* %b, i32 0, i32 1
  %40 = load i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.vec* %b, i32 0, i32 0
  %43 = load i8** %42, align 8
  %44 = sext i32 %35 to i64
  %45 = getelementptr inbounds i8* %3, i64 %44
  %46 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %buf, i64 %38, i8* getelementptr inbounds ([7 x i8]* @.str248, i32 0, i32 0), i32 %41, i8* %43, i8* %45)
  br label %48

; <label>:47                                      ; preds = %29
  br label %26

; <label>:48                                      ; preds = %37, %26
  %49 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %buf, %struct.file* %filep)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %48
  br label %116

; <label>:52                                      ; preds = %48
  %53 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([16 x i8]* @.str249, i32 0, i32 0))
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %68

; <label>:55                                      ; preds = %52
  %56 = call i8* @strstr(i8* %53, i8* getelementptr inbounds ([5 x i8]* @.str250, i32 0, i32 0)) #3
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %67

; <label>:58                                      ; preds = %55
  %59 = getelementptr inbounds [4096 x i8]* %gz_path, i32 0, i32 0
  %60 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %59, i64 4096, i8* getelementptr inbounds ([6 x i8]* @.str251, i32 0, i32 0), i8* %buf) #1
  %61 = getelementptr inbounds [4096 x i8]* %gz_path, i32 0, i32 0
  %62 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %61, %struct.file* %filep)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

; <label>:64                                      ; preds = %58
  %65 = getelementptr inbounds %struct.file* %filep, i32 0, i32 5
  store i32 1, i32* %65, align 4
  br label %116

; <label>:66                                      ; preds = %58
  br label %67

; <label>:67                                      ; preds = %66, %55
  br label %68

; <label>:68                                      ; preds = %67, %52
  %69 = icmp eq i8* %8, null
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %68
  br label %72

; <label>:71                                      ; preds = %68
  br label %72

; <label>:72                                      ; preds = %71, %70
  %73 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %70 ], [ %8, %71 ]
  %74 = call i64 @strlen(i8* %73) #3
  %75 = getelementptr inbounds i8* %buf, i64 %74
  br label %76

; <label>:76                                      ; preds = %114, %72
  %p.0 = phi i8* [ %75, %72 ], [ %115, %114 ]
  %77 = load i8* %p.0
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %116

; <label>:80                                      ; preds = %76
  %81 = load i8* %p.0
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br i1 %83, label %84, label %113

; <label>:84                                      ; preds = %80
  store i8 0, i8* %p.0
  %85 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %86 = load %struct.mg_context** %85, align 8
  %87 = getelementptr inbounds %struct.mg_context* %86, i32 0, i32 2
  %88 = getelementptr inbounds [24 x i8*]* %87, i32 0, i64 0
  %89 = load i8** %88, align 8
  %90 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %91 = load %struct.mg_context** %90, align 8
  %92 = getelementptr inbounds %struct.mg_context* %91, i32 0, i32 2
  %93 = getelementptr inbounds [24 x i8*]* %92, i32 0, i64 0
  %94 = load i8** %93, align 8
  %95 = call i64 @strlen(i8* %94) #3
  %96 = trunc i64 %95 to i32
  %97 = call i32 @match_prefix(i8* %89, i32 %96, i8* %buf)
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %111

; <label>:99                                      ; preds = %84
  %100 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %buf, %struct.file* %filep)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

; <label>:102                                     ; preds = %99
  %103 = getelementptr inbounds i8* %p.0, i64 1
  %104 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 10
  store i8* %103, i8** %104, align 8
  %105 = getelementptr inbounds i8* %p.0, i64 2
  %106 = getelementptr inbounds i8* %p.0, i64 1
  %107 = getelementptr inbounds i8* %p.0, i64 1
  %108 = call i64 @strlen(i8* %107) #3
  %109 = add i64 %108, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %105, i8* %106, i64 %109, i32 1, i1 false)
  %110 = getelementptr inbounds i8* %p.0, i64 1
  store i8 47, i8* %110
  br label %116

; <label>:111                                     ; preds = %99, %84
  store i8 47, i8* %p.0
  br label %112

; <label>:112                                     ; preds = %111
  br label %113

; <label>:113                                     ; preds = %112, %80
  br label %114

; <label>:114                                     ; preds = %113
  %115 = getelementptr inbounds i8* %p.0, i32 1
  br label %76

; <label>:116                                     ; preds = %102, %76, %64, %51
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @set_throttle(i8* %spec, i32 %remote_ip, i8* %uri) #0 {
  %vec = alloca %struct.vec, align 8
  %val = alloca %struct.vec, align 8
  %net = alloca i32, align 4
  %mask = alloca i32, align 4
  %mult = alloca i8, align 1
  %v = alloca double, align 8
  br label %1

; <label>:1                                       ; preds = %76, %22, %0
  %throttle.0 = phi i32 [ 0, %0 ], [ %throttle.0, %22 ], [ %throttle.4, %76 ]
  %.0 = phi i8* [ %spec, %0 ], [ %2, %22 ], [ %2, %76 ]
  %2 = call i8* @next_option(i8* %.0, %struct.vec* %vec, %struct.vec* %val)
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %77

; <label>:4                                       ; preds = %1
  store i8 44, i8* %mult, align 1
  %5 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  %6 = load i8** %5, align 8
  %7 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([6 x i8]* @.str245, i32 0, i32 0), double* %v, i8* %mult) #1
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %22, label %9

; <label>:9                                       ; preds = %4
  %10 = load double* %v, align 8
  %11 = fcmp olt double %10, 0.000000e+00
  br i1 %11, label %22, label %12

; <label>:12                                      ; preds = %9
  %13 = call i32 @lowercase(i8* %mult)
  %14 = icmp ne i32 %13, 107
  br i1 %14, label %15, label %23

; <label>:15                                      ; preds = %12
  %16 = call i32 @lowercase(i8* %mult)
  %17 = icmp ne i32 %16, 109
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %15
  %19 = load i8* %mult, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 44
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %18, %9, %4
  br label %1

; <label>:23                                      ; preds = %18, %15, %12
  %24 = call i32 @lowercase(i8* %mult)
  %25 = icmp eq i32 %24, 107
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23
  br label %31

; <label>:27                                      ; preds = %23
  %28 = call i32 @lowercase(i8* %mult)
  %29 = icmp eq i32 %28, 109
  %30 = select i1 %29, i32 1048576, i32 1
  br label %31

; <label>:31                                      ; preds = %27, %26
  %32 = phi i32 [ 1024, %26 ], [ %30, %27 ]
  %33 = sitofp i32 %32 to double
  %34 = load double* %v, align 8
  %35 = fmul double %34, %33
  store double %35, double* %v, align 8
  %36 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 1
  %37 = load i64* %36, align 8
  %38 = icmp eq i64 %37, 1
  br i1 %38, label %39, label %49

; <label>:39                                      ; preds = %31
  %40 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %41 = load i8** %40, align 8
  %42 = getelementptr inbounds i8* %41, i64 0
  %43 = load i8* %42
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 42
  br i1 %45, label %46, label %49

; <label>:46                                      ; preds = %39
  %47 = load double* %v, align 8
  %48 = fptosi double %47 to i32
  br label %76

; <label>:49                                      ; preds = %39, %31
  %50 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %51 = load i8** %50, align 8
  %52 = call i32 @parse_net(i8* %51, i32* %net, i32* %mask)
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %63

; <label>:54                                      ; preds = %49
  %55 = load i32* %mask, align 4
  %56 = and i32 %remote_ip, %55
  %57 = load i32* %net, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

; <label>:59                                      ; preds = %54
  %60 = load double* %v, align 8
  %61 = fptosi double %60 to i32
  br label %62

; <label>:62                                      ; preds = %59, %54
  %throttle.1 = phi i32 [ %61, %59 ], [ %throttle.0, %54 ]
  br label %75

; <label>:63                                      ; preds = %49
  %64 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %65 = load i8** %64, align 8
  %66 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 1
  %67 = load i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @match_prefix(i8* %65, i32 %68, i8* %uri)
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

; <label>:71                                      ; preds = %63
  %72 = load double* %v, align 8
  %73 = fptosi double %72 to i32
  br label %74

; <label>:74                                      ; preds = %71, %63
  %throttle.2 = phi i32 [ %73, %71 ], [ %throttle.0, %63 ]
  br label %75

; <label>:75                                      ; preds = %74, %62
  %throttle.3 = phi i32 [ %throttle.1, %62 ], [ %throttle.2, %74 ]
  br label %76

; <label>:76                                      ; preds = %75, %46
  %throttle.4 = phi i32 [ %48, %46 ], [ %throttle.3, %75 ]
  br label %1

; <label>:77                                      ; preds = %1
  ret i32 %throttle.0
}

; Function Attrs: nounwind uwtable
define internal i32 @get_remote_ip(%struct.mg_connection* %conn) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %2 = getelementptr inbounds %struct.socket* %1, i32 0, i32 2
  %3 = bitcast %union.usa* %2 to %struct.sockaddr_in*
  %4 = getelementptr inbounds %struct.sockaddr_in* %3, i32 0, i32 2
  %5 = bitcast %struct.in_addr* %4 to i32*
  %6 = load i32* %5
  %7 = call i32 @ntohl(i32 %6) #2
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_first_ssl_listener_index(%struct.mg_context* %ctx) #0 {
  br label %1

; <label>:1                                       ; preds = %24, %0
  %i.0 = phi i32 [ 0, %0 ], [ %25, %24 ]
  %index.0 = phi i32 [ -1, %0 ], [ %23, %24 ]
  %2 = icmp eq i32 %index.0, -1
  br i1 %2, label %3, label %7

; <label>:3                                       ; preds = %1
  %4 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 6
  %5 = load i32* %4, align 4
  %6 = icmp slt i32 %i.0, %5
  br label %7

; <label>:7                                       ; preds = %3, %1
  %8 = phi i1 [ false, %1 ], [ %6, %3 ]
  br i1 %8, label %9, label %26

; <label>:9                                       ; preds = %7
  %10 = sext i32 %i.0 to i64
  %11 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 5
  %12 = load %struct.socket** %11, align 8
  %13 = getelementptr inbounds %struct.socket* %12, i64 %10
  %14 = bitcast %struct.socket* %13 to i8*
  %15 = getelementptr i8* %14, i32 36
  %16 = bitcast i8* %15 to i32*
  %17 = load i32* %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %9
  br label %22

; <label>:21                                      ; preds = %9
  br label %22

; <label>:22                                      ; preds = %21, %20
  %23 = phi i32 [ %i.0, %20 ], [ -1, %21 ]
  br label %24

; <label>:24                                      ; preds = %22
  %25 = add nsw i32 %i.0, 1
  br label %1

; <label>:26                                      ; preds = %7
  ret i32 %index.0
}

; Function Attrs: nounwind uwtable
define internal void @redirect_to_https_port(%struct.mg_connection* %conn, i32 %ssl_index) #0 {
  %host = alloca [1025 x i8], align 16
  %1 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([5 x i8]* @.str242, i32 0, i32 0))
  %2 = icmp eq i8* %1, null
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds [1025 x i8]* %host, i32 0, i32 0
  %5 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str243, i32 0, i32 0), i8* %4) #1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %3, %0
  %8 = getelementptr inbounds [1025 x i8]* %host, i32 0, i32 0
  %9 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %10 = getelementptr inbounds %struct.socket* %9, i32 0, i32 1
  call void @sockaddr_to_string(i8* %8, i64 1025, %union.usa* %10)
  br label %11

; <label>:11                                      ; preds = %7, %3
  %12 = getelementptr inbounds [1025 x i8]* %host, i32 0, i32 0
  %13 = sext i32 %ssl_index to i64
  %14 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %15 = load %struct.mg_context** %14, align 8
  %16 = getelementptr inbounds %struct.mg_context* %15, i32 0, i32 5
  %17 = load %struct.socket** %16, align 8
  %18 = getelementptr inbounds %struct.socket* %17, i64 %13
  %19 = getelementptr inbounds %struct.socket* %18, i32 0, i32 1
  %20 = bitcast %union.usa* %19 to %struct.sockaddr_in*
  %21 = getelementptr inbounds %struct.sockaddr_in* %20, i32 0, i32 1
  %22 = load i16* %21, align 2
  %23 = call zeroext i16 @ntohs(i16 zeroext %22) #2
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %26 = getelementptr inbounds %struct.mg_request_info* %25, i32 0, i32 1
  %27 = load i8** %26, align 8
  %28 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([50 x i8]* @.str244, i32 0, i32 0), i8* %12, i32 %24, i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @is_put_or_delete_request(%struct.mg_connection* %conn) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %2 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %3 = load i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %17

; <label>:5                                       ; preds = %0
  %6 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str58, i32 0, i32 0)) #3
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %5
  %9 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str60, i32 0, i32 0)) #3
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11                                      ; preds = %8
  %12 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8]* @.str59, i32 0, i32 0)) #3
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

; <label>:15                                      ; preds = %11, %8, %5
  %16 = phi i1 [ true, %8 ], [ true, %5 ], [ %14, %11 ]
  br label %17

; <label>:17                                      ; preds = %15, %0
  %18 = phi i1 [ false, %0 ], [ %16, %15 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @check_authorization(%struct.mg_connection* %conn, i8* %path) #0 {
  %fname = alloca [4096 x i8], align 16
  %uri_vec = alloca %struct.vec, align 8
  %filename_vec = alloca %struct.vec, align 8
  %file = alloca %struct.file, align 8
  %1 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = bitcast i8* %1 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %3 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %2, i32 0, i32 6
  %4 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %5 = load %struct.mg_context** %4, align 8
  %6 = getelementptr inbounds %struct.mg_context* %5, i32 0, i32 2
  %7 = getelementptr inbounds [24 x i8*]* %6, i32 0, i64 4
  %8 = load i8** %7, align 8
  br label %9

; <label>:9                                       ; preds = %39, %0
  %list.0 = phi i8* [ %8, %0 ], [ %10, %39 ]
  %10 = call i8* @next_option(i8* %list.0, %struct.vec* %uri_vec, %struct.vec* %filename_vec)
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %40

; <label>:12                                      ; preds = %9
  %13 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %14 = getelementptr inbounds %struct.mg_request_info* %13, i32 0, i32 1
  %15 = load i8** %14, align 8
  %16 = getelementptr inbounds %struct.vec* %uri_vec, i32 0, i32 0
  %17 = load i8** %16, align 8
  %18 = getelementptr inbounds %struct.vec* %uri_vec, i32 0, i32 1
  %19 = load i64* %18, align 8
  %20 = call i32 @memcmp(i8* %15, i8* %17, i64 %19) #3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

; <label>:22                                      ; preds = %12
  %23 = getelementptr inbounds [4096 x i8]* %fname, i32 0, i32 0
  %24 = getelementptr inbounds %struct.vec* %filename_vec, i32 0, i32 1
  %25 = load i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.vec* %filename_vec, i32 0, i32 0
  %28 = load i8** %27, align 8
  %29 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %23, i64 4096, i8* getelementptr inbounds ([5 x i8]* @.str175, i32 0, i32 0), i32 %26, i8* %28)
  %30 = getelementptr inbounds [4096 x i8]* %fname, i32 0, i32 0
  %31 = call i32 @mg_fopen(%struct.mg_connection* %conn, i8* %30, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.file* %file)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

; <label>:33                                      ; preds = %22
  %34 = getelementptr inbounds [4096 x i8]* %fname, i32 0, i32 0
  %35 = call i32* @__errno_location() #2
  %36 = load i32* %35
  %37 = call i8* @strerror(i32 %36) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([23 x i8]* @.str239, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @__func__.check_authorization, i32 0, i32 0), i8* %34, i8* %37)
  br label %38

; <label>:38                                      ; preds = %33, %22
  br label %40

; <label>:39                                      ; preds = %12
  br label %9

; <label>:40                                      ; preds = %38, %9
  %41 = call i32 @is_file_opened(%struct.file* %file)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

; <label>:43                                      ; preds = %40
  call void @open_auth_file(%struct.mg_connection* %conn, i8* %path, %struct.file* %file)
  br label %44

; <label>:44                                      ; preds = %43, %40
  %45 = call i32 @is_file_opened(%struct.file* %file)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %44
  %48 = call i32 @authorize(%struct.mg_connection* %conn, %struct.file* %file)
  call void @mg_fclose(%struct.file* %file)
  br label %49

; <label>:49                                      ; preds = %47, %44
  %authorized.0 = phi i32 [ %48, %47 ], [ 1, %44 ]
  ret i32 %authorized.0
}

; Function Attrs: nounwind uwtable
define internal void @send_authorization_request(%struct.mg_connection* %conn) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 401, i32* %1, align 4
  %2 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %3 = load %struct.mg_context** %2, align 8
  %4 = getelementptr inbounds %struct.mg_context* %3, i32 0, i32 2
  %5 = getelementptr inbounds [24 x i8*]* %4, i32 0, i64 5
  %6 = load i8** %5, align 8
  %7 = call i64 @time(i64* null) #1
  %8 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([111 x i8]* @.str238, i32 0, i32 0), i8* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @send_options(%struct.mg_connection* %conn) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 200, i32* %1, align 4
  %2 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8]* @.str237, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @is_authorized_for_put(%struct.mg_connection* %conn) #0 {
  %file = alloca %struct.file, align 8
  %1 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = bitcast i8* %1 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %3 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %2, i32 0, i32 6
  %4 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %5 = load %struct.mg_context** %4, align 8
  %6 = getelementptr inbounds %struct.mg_context* %5, i32 0, i32 2
  %7 = getelementptr inbounds [24 x i8*]* %6, i32 0, i64 2
  %8 = load i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

; <label>:10                                      ; preds = %0
  %11 = call i32 @mg_fopen(%struct.mg_connection* %conn, i8* %8, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.file* %file)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %10
  %14 = call i32 @authorize(%struct.mg_connection* %conn, %struct.file* %file)
  call void @mg_fclose(%struct.file* %file)
  br label %15

; <label>:15                                      ; preds = %13, %10, %0
  %ret.0 = phi i32 [ %14, %13 ], [ 0, %10 ], [ 0, %0 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind uwtable
define internal void @put_file(%struct.mg_connection* %conn, i8* %path) #0 {
  %file = alloca %struct.file, align 8
  %r1 = alloca i64, align 8
  %r2 = alloca i64, align 8
  %1 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = bitcast i8* %1 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %3 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %2, i32 0, i32 6
  %4 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %path, %struct.file* %file)
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %5, i32 200, i32 201
  %7 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 %6, i32* %7, align 4
  %8 = call i32 @put_dir(%struct.mg_connection* %conn, i8* %path)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  %12 = load i32* %11, align 4
  %13 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([19 x i8]* @.str218, i32 0, i32 0), i32 %12)
  br label %58

; <label>:14                                      ; preds = %0
  %15 = icmp eq i32 %8, -1
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %14
  %17 = load i8** @http_500_error, align 8
  %18 = call i32* @__errno_location() #2
  %19 = load i32* %18
  %20 = call i8* @strerror(i32 %19) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %17, i8* getelementptr inbounds ([16 x i8]* @.str219, i32 0, i32 0), i8* %path, i8* %20)
  br label %57

; <label>:21                                      ; preds = %14
  %22 = call i32 @mg_fopen(%struct.mg_connection* %conn, i8* %path, i8* getelementptr inbounds ([4 x i8]* @.str220, i32 0, i32 0), %struct.file* %file)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

; <label>:24                                      ; preds = %21
  %25 = getelementptr inbounds %struct.file* %file, i32 0, i32 3
  %26 = load %struct._IO_FILE** %25, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %24, %21
  call void @mg_fclose(%struct.file* %file)
  %29 = load i8** @http_500_error, align 8
  %30 = call i32* @__errno_location() #2
  %31 = load i32* %30
  %32 = call i8* @strerror(i32 %31) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %29, i8* getelementptr inbounds ([14 x i8]* @.str94, i32 0, i32 0), i8* %path, i8* %32)
  br label %56

; <label>:33                                      ; preds = %24
  call void @fclose_on_exec(%struct.file* %file)
  %34 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([14 x i8]* @.str221, i32 0, i32 0))
  store i64 0, i64* %r2, align 8
  store i64 0, i64* %r1, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %45

; <label>:36                                      ; preds = %33
  %37 = call i32 @parse_range_header(i8* %34, i64* %r1, i64* %r2)
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

; <label>:39                                      ; preds = %36
  %40 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 206, i32* %40, align 4
  %41 = getelementptr inbounds %struct.file* %file, i32 0, i32 3
  %42 = load %struct._IO_FILE** %41, align 8
  %43 = load i64* %r1, align 8
  %44 = call i32 @fseeko(%struct._IO_FILE* %42, i64 %43, i32 0)
  br label %45

; <label>:45                                      ; preds = %39, %36, %33
  %46 = getelementptr inbounds %struct.file* %file, i32 0, i32 3
  %47 = load %struct._IO_FILE** %46, align 8
  %48 = call i32 @forward_body_data(%struct.mg_connection* %conn, %struct._IO_FILE* %47, i32 -1, %struct.ssl_st* null)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

; <label>:50                                      ; preds = %45
  %51 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 500, i32* %51, align 4
  br label %52

; <label>:52                                      ; preds = %50, %45
  %53 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  %54 = load i32* %53, align 4
  %55 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([38 x i8]* @.str222, i32 0, i32 0), i32 %54)
  call void @mg_fclose(%struct.file* %file)
  br label %56

; <label>:56                                      ; preds = %52, %28
  br label %57

; <label>:57                                      ; preds = %56, %16
  br label %58

; <label>:58                                      ; preds = %57, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mkcol(%struct.mg_connection* %conn, i8* %path) #0 {
  %de = alloca %struct.de, align 8
  %1 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %2 = bitcast %struct.file* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 48, i32 1, i1 false)
  %3 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %4 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %path, %struct.file* %3)
  %5 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %6 = getelementptr inbounds %struct.file* %5, i32 0, i32 1
  %7 = load i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %0
  %10 = call i32* @__errno_location() #2
  %11 = load i32* %10
  %12 = call i8* @strerror(i32 %11) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 405, i8* getelementptr inbounds ([19 x i8]* @.str212, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i32 0, i32 0), i8* %path, i8* %12)
  br label %67

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %15 = load i32* %14, align 4
  %16 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  %17 = load i32* %16, align 4
  %18 = sub nsw i32 %15, %17
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24

; <label>:20                                      ; preds = %13
  %21 = call i32* @__errno_location() #2
  %22 = load i32* %21
  %23 = call i8* @strerror(i32 %22) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 415, i8* getelementptr inbounds ([23 x i8]* @.str214, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i32 0, i32 0), i8* %path, i8* %23)
  br label %67

; <label>:24                                      ; preds = %13
  %25 = call i32 @mkdir(i8* %path, i32 493) #1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

; <label>:27                                      ; preds = %24
  %28 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 201, i32* %28, align 4
  %29 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  %30 = load i32* %29, align 4
  %31 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([24 x i8]* @.str215, i32 0, i32 0), i32 %30)
  br label %67

; <label>:32                                      ; preds = %24
  %33 = icmp eq i32 %25, -1
  br i1 %33, label %34, label %66

; <label>:34                                      ; preds = %32
  %35 = call i32* @__errno_location() #2
  %36 = load i32* %35
  %37 = icmp eq i32 %36, 17
  br i1 %37, label %38, label %42

; <label>:38                                      ; preds = %34
  %39 = call i32* @__errno_location() #2
  %40 = load i32* %39
  %41 = call i8* @strerror(i32 %40) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 405, i8* getelementptr inbounds ([19 x i8]* @.str212, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i32 0, i32 0), i8* %path, i8* %41)
  br label %65

; <label>:42                                      ; preds = %34
  %43 = call i32* @__errno_location() #2
  %44 = load i32* %43
  %45 = icmp eq i32 %44, 13
  br i1 %45, label %46, label %50

; <label>:46                                      ; preds = %42
  %47 = call i32* @__errno_location() #2
  %48 = load i32* %47
  %49 = call i8* @strerror(i32 %48) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 403, i8* getelementptr inbounds ([10 x i8]* @.str216, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i32 0, i32 0), i8* %path, i8* %49)
  br label %64

; <label>:50                                      ; preds = %42
  %51 = call i32* @__errno_location() #2
  %52 = load i32* %51
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %58

; <label>:54                                      ; preds = %50
  %55 = call i32* @__errno_location() #2
  %56 = load i32* %55
  %57 = call i8* @strerror(i32 %56) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 409, i8* getelementptr inbounds ([9 x i8]* @.str217, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str213, i32 0, i32 0), i8* %path, i8* %57)
  br label %63

; <label>:58                                      ; preds = %50
  %59 = load i8** @http_500_error, align 8
  %60 = call i32* @__errno_location() #2
  %61 = load i32* %60
  %62 = call i8* @strerror(i32 %61) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %59, i8* getelementptr inbounds ([14 x i8]* @.str94, i32 0, i32 0), i8* %path, i8* %62)
  br label %63

; <label>:63                                      ; preds = %58, %54
  br label %64

; <label>:64                                      ; preds = %63, %46
  br label %65

; <label>:65                                      ; preds = %64, %38
  br label %66

; <label>:66                                      ; preds = %65, %32
  br label %67

; <label>:67                                      ; preds = %66, %27, %20, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @remove_directory(%struct.mg_connection* %conn, i8* %dir) #0 {
  %path = alloca [4096 x i8], align 16
  %de = alloca %struct.de, align 8
  %1 = call %struct.__dirstream* @opendir(i8* %dir)
  %2 = icmp eq %struct.__dirstream* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %51

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  store %struct.mg_connection* %conn, %struct.mg_connection** %5, align 8
  br label %6

; <label>:6                                       ; preds = %46, %19, %4
  %7 = call %struct.dirent* @readdir(%struct.__dirstream* %1)
  %8 = icmp ne %struct.dirent* %7, null
  br i1 %8, label %9, label %47

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds %struct.dirent* %7, i32 0, i32 4
  %11 = getelementptr inbounds [256 x i8]* %10, i32 0, i32 0
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8]* @.str199, i32 0, i32 0)) #3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds %struct.dirent* %7, i32 0, i32 4
  %16 = getelementptr inbounds [256 x i8]* %15, i32 0, i32 0
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8]* @.str187, i32 0, i32 0)) #3
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

; <label>:19                                      ; preds = %14, %9
  br label %6

; <label>:20                                      ; preds = %14
  %21 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %22 = getelementptr inbounds %struct.dirent* %7, i32 0, i32 4
  %23 = getelementptr inbounds [256 x i8]* %22, i32 0, i32 0
  %24 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %21, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str107, i32 0, i32 0), i8* %dir, i32 47, i8* %23)
  %25 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %26 = bitcast %struct.file* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 48, i32 1, i1 false)
  %27 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %28 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %29 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %27, %struct.file* %28)
  %30 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %31 = getelementptr inbounds %struct.file* %30, i32 0, i32 1
  %32 = load i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

; <label>:34                                      ; preds = %20
  %35 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %36 = getelementptr inbounds %struct.file* %35, i32 0, i32 0
  %37 = load i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

; <label>:39                                      ; preds = %34
  %40 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %41 = call i32 @remove_directory(%struct.mg_connection* %conn, i8* %40)
  br label %45

; <label>:42                                      ; preds = %34
  %43 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %44 = call i32 @remove(i8* %43) #1
  br label %45

; <label>:45                                      ; preds = %42, %39
  br label %46

; <label>:46                                      ; preds = %45, %20
  br label %6

; <label>:47                                      ; preds = %6
  %48 = call i32 @closedir(%struct.__dirstream* %1)
  %49 = call i32 @rmdir(i8* %dir) #1
  br label %50

; <label>:50                                      ; preds = %47
  br label %51

; <label>:51                                      ; preds = %50, %3
  %.0 = phi i32 [ 0, %3 ], [ 1, %50 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @must_hide_file(%struct.mg_connection* %conn, i8* %path) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %2 = load %struct.mg_context** %1, align 8
  %3 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %4 = getelementptr inbounds [24 x i8*]* %3, i32 0, i64 22
  %5 = load i8** %4, align 8
  %6 = call i64 @strlen(i8* getelementptr inbounds ([13 x i8]* @.str210, i32 0, i32 0)) #3
  %7 = trunc i64 %6 to i32
  %8 = call i32 @match_prefix(i8* getelementptr inbounds ([13 x i8]* @.str210, i32 0, i32 0), i32 %7, i8* %path)
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %19, label %10

; <label>:10                                      ; preds = %0
  %11 = icmp ne i8* %5, null
  br i1 %11, label %12, label %17

; <label>:12                                      ; preds = %10
  %13 = call i64 @strlen(i8* %5) #3
  %14 = trunc i64 %13 to i32
  %15 = call i32 @match_prefix(i8* %5, i32 %14, i8* %path)
  %16 = icmp sgt i32 %15, 0
  br label %17

; <label>:17                                      ; preds = %12, %10
  %18 = phi i1 [ false, %10 ], [ %16, %12 ]
  br label %19

; <label>:19                                      ; preds = %17, %0
  %20 = phi i1 [ true, %0 ], [ %18, %17 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @handle_propfind(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep) #0 {
  %1 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([6 x i8]* @.str200, i32 0, i32 0))
  %2 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 11
  store i32 1, i32* %2, align 4
  %3 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 207, i32* %3, align 4
  %4 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([88 x i8]* @.str201, i32 0, i32 0))
  %5 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([70 x i8]* @.str202, i32 0, i32 0))
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %8 = load i64* %7, align 8
  %9 = add nsw i64 %8, %6
  store i64 %9, i64* %7, align 8
  %10 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %11 = getelementptr inbounds %struct.mg_request_info* %10, i32 0, i32 1
  %12 = load i8** %11, align 8
  call void @print_props(%struct.mg_connection* %conn, i8* %12, %struct.file* %filep)
  %13 = getelementptr inbounds %struct.file* %filep, i32 0, i32 0
  %14 = load i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %18 = load %struct.mg_context** %17, align 8
  %19 = getelementptr inbounds %struct.mg_context* %18, i32 0, i32 2
  %20 = getelementptr inbounds [24 x i8*]* %19, i32 0, i64 9
  %21 = load i8** %20, align 8
  %22 = call i32 @mg_strcasecmp(i8* %21, i8* getelementptr inbounds ([4 x i8]* @.str37, i32 0, i32 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

; <label>:24                                      ; preds = %16
  %25 = icmp eq i8* %1, null
  br i1 %25, label %29, label %26

; <label>:26                                      ; preds = %24
  %27 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8]* @.str203, i32 0, i32 0)) #3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %26, %24
  %30 = bitcast %struct.mg_connection* %conn to i8*
  %31 = call i32 @scan_directory(%struct.mg_connection* %conn, i8* %path, i8* %30, void (%struct.de*, i8*)* @print_dav_dir_entry)
  br label %32

; <label>:32                                      ; preds = %29, %26, %16, %0
  %33 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([4 x i8]* @.str204, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str205, i32 0, i32 0))
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %36 = load i64* %35, align 8
  %37 = add nsw i64 %36, %34
  store i64 %37, i64* %35, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @substitute_index_file(%struct.mg_connection* %conn, i8* %path, i64 %path_len, %struct.file* %filep) #0 {
  %file = alloca %struct.file, align 8
  %filename_vec = alloca %struct.vec, align 8
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %2 = load %struct.mg_context** %1, align 8
  %3 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %4 = getelementptr inbounds [24 x i8*]* %3, i32 0, i64 12
  %5 = load i8** %4, align 8
  %6 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 48, i32 8, i1 false)
  %7 = bitcast i8* %6 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %8 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %7, i32 0, i32 6
  %9 = call i64 @strlen(i8* %path) #3
  br label %10

; <label>:10                                      ; preds = %20, %0
  %n.0 = phi i64 [ %9, %0 ], [ %21, %20 ]
  %11 = icmp ugt i64 %n.0, 0
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %10
  %13 = sub i64 %n.0, 1
  %14 = getelementptr inbounds i8* %path, i64 %13
  %15 = load i8* %14
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br label %18

; <label>:18                                      ; preds = %12, %10
  %19 = phi i1 [ false, %10 ], [ %17, %12 ]
  br i1 %19, label %20, label %22

; <label>:20                                      ; preds = %18
  %21 = add i64 %n.0, -1
  br label %10

; <label>:22                                      ; preds = %18
  %23 = getelementptr inbounds i8* %path, i64 %n.0
  store i8 47, i8* %23
  br label %24

; <label>:24                                      ; preds = %47, %33, %22
  %list.0 = phi i8* [ %5, %22 ], [ %25, %33 ], [ %25, %47 ]
  %25 = call i8* @next_option(i8* %list.0, %struct.vec* %filename_vec, %struct.vec* null)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %48

; <label>:27                                      ; preds = %24
  %28 = getelementptr inbounds %struct.vec* %filename_vec, i32 0, i32 1
  %29 = load i64* %28, align 8
  %30 = add i64 %n.0, 2
  %31 = sub i64 %path_len, %30
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %27
  br label %24

; <label>:34                                      ; preds = %27
  %35 = getelementptr inbounds i8* %path, i64 %n.0
  %36 = getelementptr inbounds i8* %35, i64 1
  %37 = getelementptr inbounds %struct.vec* %filename_vec, i32 0, i32 0
  %38 = load i8** %37, align 8
  %39 = getelementptr inbounds %struct.vec* %filename_vec, i32 0, i32 1
  %40 = load i64* %39, align 8
  %41 = add i64 %40, 1
  call void @mg_strlcpy(i8* %36, i8* %38, i64 %41)
  %42 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %path, %struct.file* %file)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44                                      ; preds = %34
  %45 = bitcast %struct.file* %filep to i8*
  %46 = bitcast %struct.file* %file to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 48, i32 8, i1 false)
  br label %48

; <label>:47                                      ; preds = %34
  br label %24

; <label>:48                                      ; preds = %44, %24
  %found.0 = phi i32 [ 1, %44 ], [ 0, %24 ]
  %49 = icmp ne i32 %found.0, 0
  br i1 %49, label %52, label %50

; <label>:50                                      ; preds = %48
  %51 = getelementptr inbounds i8* %path, i64 %n.0
  store i8 0, i8* %51
  br label %52

; <label>:52                                      ; preds = %50, %48
  ret i32 %found.0
}

; Function Attrs: nounwind uwtable
define internal void @handle_directory_request(%struct.mg_connection* %conn, i8* %dir) #0 {
  %data = alloca %struct.dir_scan_data, align 8
  %1 = bitcast %struct.dir_scan_data* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.dir_scan_data* @handle_directory_request.data to i8*), i64 16, i32 8, i1 false)
  %2 = bitcast %struct.dir_scan_data* %data to i8*
  %3 = call i32 @scan_directory(%struct.mg_connection* %conn, i8* %dir, i8* %2, void (%struct.de*, i8*)* @dir_scan_callback)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

; <label>:5                                       ; preds = %0
  %6 = call i32* @__errno_location() #2
  %7 = load i32* %6
  %8 = call i8* @strerror(i32 %7) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* getelementptr inbounds ([22 x i8]* @.str182, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str183, i32 0, i32 0), i8* %dir, i8* %8)
  br label %84

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %11 = getelementptr inbounds %struct.mg_request_info* %10, i32 0, i32 3
  %12 = load i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %16 = getelementptr inbounds %struct.mg_request_info* %15, i32 0, i32 3
  %17 = load i8** %16, align 8
  %18 = getelementptr inbounds i8* %17, i64 1
  %19 = load i8* %18
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 100
  br label %22

; <label>:22                                      ; preds = %14, %9
  %23 = phi i1 [ false, %9 ], [ %21, %14 ]
  %24 = select i1 %23, i32 97, i32 100
  %25 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 11
  store i32 1, i32* %25, align 4
  %26 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8]* @.str184, i32 0, i32 0))
  %27 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %28 = getelementptr inbounds %struct.mg_request_info* %27, i32 0, i32 1
  %29 = load i8** %28, align 8
  %30 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %31 = getelementptr inbounds %struct.mg_request_info* %30, i32 0, i32 1
  %32 = load i8** %31, align 8
  %33 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_chunked_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([280 x i8]* @.str185, i32 0, i32 0), i8* %29, i8* %32, i32 %24, i32 %24, i32 %24)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %36 = load i64* %35, align 8
  %37 = add nsw i64 %36, %34
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %39 = getelementptr inbounds %struct.mg_request_info* %38, i32 0, i32 1
  %40 = load i8** %39, align 8
  %41 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_chunked_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([81 x i8]* @.str186, i32 0, i32 0), i8* %40, i8* getelementptr inbounds ([3 x i8]* @.str187, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str188, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0))
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %44 = load i64* %43, align 8
  %45 = add nsw i64 %44, %42
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 0
  %47 = load %struct.de** %46, align 8
  %48 = bitcast %struct.de* %47 to i8*
  %49 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 1
  %50 = load i32* %49, align 4
  %51 = sext i32 %50 to i64
  call void @qsort(i8* %48, i64 %51, i64 64, i32 (i8*, i8*)* @compare_dir_entries)
  br label %52

; <label>:52                                      ; preds = %67, %22
  %i.0 = phi i32 [ 0, %22 ], [ %68, %67 ]
  %53 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 1
  %54 = load i32* %53, align 4
  %55 = icmp slt i32 %i.0, %54
  br i1 %55, label %56, label %69

; <label>:56                                      ; preds = %52
  %57 = sext i32 %i.0 to i64
  %58 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 0
  %59 = load %struct.de** %58, align 8
  %60 = getelementptr inbounds %struct.de* %59, i64 %57
  call void @print_dir_entry(%struct.de* %60)
  %61 = sext i32 %i.0 to i64
  %62 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 0
  %63 = load %struct.de** %62, align 8
  %64 = getelementptr inbounds %struct.de* %63, i64 %61
  %65 = getelementptr inbounds %struct.de* %64, i32 0, i32 1
  %66 = load i8** %65, align 8
  call void @free(i8* %66) #1
  br label %67

; <label>:67                                      ; preds = %56
  %68 = add nsw i32 %i.0, 1
  br label %52

; <label>:69                                      ; preds = %52
  %70 = getelementptr inbounds %struct.dir_scan_data* %data, i32 0, i32 0
  %71 = load %struct.de** %70, align 8
  %72 = bitcast %struct.de* %71 to i8*
  call void @free(i8* %72) #1
  %73 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_chunked_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8]* @.str189, i32 0, i32 0))
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %76 = load i64* %75, align 8
  %77 = add nsw i64 %76, %74
  store i64 %77, i64* %75, align 8
  %78 = call i32 @mg_write(%struct.mg_connection* %conn, i8* getelementptr inbounds ([6 x i8]* @.str190, i32 0, i32 0), i64 5)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %81 = load i64* %80, align 8
  %82 = add nsw i64 %81, %79
  store i64 %82, i64* %80, align 8
  %83 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 200, i32* %83, align 4
  br label %84

; <label>:84                                      ; preds = %69, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @match_prefix(i8* %pattern, i32 %pattern_len, i8* %str) #0 {
  %1 = sext i32 %pattern_len to i64
  %2 = call i8* @memchr(i8* %pattern, i32 124, i64 %1) #3
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %24

; <label>:4                                       ; preds = %0
  %5 = ptrtoint i8* %2 to i64
  %6 = ptrtoint i8* %pattern to i64
  %7 = sub i64 %5, %6
  %8 = trunc i64 %7 to i32
  %9 = call i32 @match_prefix(i8* %pattern, i32 %8, i8* %str)
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %4
  br label %22

; <label>:12                                      ; preds = %4
  %13 = getelementptr inbounds i8* %2, i64 1
  %14 = sext i32 %pattern_len to i64
  %15 = getelementptr inbounds i8* %pattern, i64 %14
  %16 = getelementptr inbounds i8* %2, i64 1
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @match_prefix(i8* %13, i32 %20, i8* %str)
  br label %22

; <label>:22                                      ; preds = %12, %11
  %23 = phi i32 [ %9, %11 ], [ %21, %12 ]
  br label %126

; <label>:24                                      ; preds = %0
  br label %25

; <label>:25                                      ; preds = %122, %24
  %i.0 = phi i32 [ 0, %24 ], [ %123, %122 ]
  %j.0 = phi i32 [ 0, %24 ], [ %124, %122 ]
  %26 = icmp slt i32 %i.0, %pattern_len
  br i1 %26, label %27, label %125

; <label>:27                                      ; preds = %25
  %28 = sext i32 %i.0 to i64
  %29 = getelementptr inbounds i8* %pattern, i64 %28
  %30 = load i8* %29
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 63
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %27
  %34 = sext i32 %j.0 to i64
  %35 = getelementptr inbounds i8* %str, i64 %34
  %36 = load i8* %35
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %33
  br label %122

; <label>:40                                      ; preds = %33, %27
  %41 = sext i32 %i.0 to i64
  %42 = getelementptr inbounds i8* %pattern, i64 %41
  %43 = load i8* %42
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 36
  br i1 %45, label %46, label %56

; <label>:46                                      ; preds = %40
  %47 = sext i32 %j.0 to i64
  %48 = getelementptr inbounds i8* %str, i64 %47
  %49 = load i8* %48
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %46
  br label %54

; <label>:53                                      ; preds = %46
  br label %54

; <label>:54                                      ; preds = %53, %52
  %55 = phi i32 [ %j.0, %52 ], [ -1, %53 ]
  br label %126

; <label>:56                                      ; preds = %40
  %57 = sext i32 %i.0 to i64
  %58 = getelementptr inbounds i8* %pattern, i64 %57
  %59 = load i8* %58
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 42
  br i1 %61, label %62, label %109

; <label>:62                                      ; preds = %56
  %63 = add nsw i32 %i.0, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8* %pattern, i64 %64
  %66 = load i8* %65
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 42
  br i1 %68, label %69, label %75

; <label>:69                                      ; preds = %62
  %70 = add nsw i32 %63, 1
  %71 = sext i32 %j.0 to i64
  %72 = getelementptr inbounds i8* %str, i64 %71
  %73 = call i64 @strlen(i8* %72) #3
  %74 = trunc i64 %73 to i32
  br label %80

; <label>:75                                      ; preds = %62
  %76 = sext i32 %j.0 to i64
  %77 = getelementptr inbounds i8* %str, i64 %76
  %78 = call i64 @strcspn(i8* %77, i8* getelementptr inbounds ([2 x i8]* @.str181, i32 0, i32 0)) #3
  %79 = trunc i64 %78 to i32
  br label %80

; <label>:80                                      ; preds = %75, %69
  %i.1 = phi i32 [ %70, %69 ], [ %63, %75 ]
  %len.0 = phi i32 [ %74, %69 ], [ %79, %75 ]
  %81 = icmp eq i32 %i.1, %pattern_len
  br i1 %81, label %82, label %84

; <label>:82                                      ; preds = %80
  %83 = add nsw i32 %j.0, %len.0
  br label %126

; <label>:84                                      ; preds = %80
  br label %85

; <label>:85                                      ; preds = %99, %84
  %len.1 = phi i32 [ %len.0, %84 ], [ %len.2, %99 ]
  %86 = sext i32 %i.1 to i64
  %87 = getelementptr inbounds i8* %pattern, i64 %86
  %88 = sub nsw i32 %pattern_len, %i.1
  %89 = sext i32 %j.0 to i64
  %90 = getelementptr inbounds i8* %str, i64 %89
  %91 = sext i32 %len.1 to i64
  %92 = getelementptr inbounds i8* %90, i64 %91
  %93 = call i32 @match_prefix(i8* %87, i32 %88, i8* %92)
  br label %94

; <label>:94                                      ; preds = %85
  %95 = icmp eq i32 %93, -1
  br i1 %95, label %96, label %99

; <label>:96                                      ; preds = %94
  %97 = add nsw i32 %len.1, -1
  %98 = icmp sgt i32 %len.1, 0
  br label %99

; <label>:99                                      ; preds = %96, %94
  %len.2 = phi i32 [ %97, %96 ], [ %len.1, %94 ]
  %100 = phi i1 [ false, %94 ], [ %98, %96 ]
  br i1 %100, label %85, label %101

; <label>:101                                     ; preds = %99
  %102 = icmp eq i32 %93, -1
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %101
  br label %107

; <label>:104                                     ; preds = %101
  %105 = add nsw i32 %j.0, %93
  %106 = add nsw i32 %105, %len.2
  br label %107

; <label>:107                                     ; preds = %104, %103
  %108 = phi i32 [ -1, %103 ], [ %106, %104 ]
  br label %126

; <label>:109                                     ; preds = %56
  %110 = sext i32 %i.0 to i64
  %111 = getelementptr inbounds i8* %pattern, i64 %110
  %112 = call i32 @lowercase(i8* %111)
  %113 = sext i32 %j.0 to i64
  %114 = getelementptr inbounds i8* %str, i64 %113
  %115 = call i32 @lowercase(i8* %114)
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %109
  br label %126

; <label>:118                                     ; preds = %109
  br label %119

; <label>:119                                     ; preds = %118
  br label %120

; <label>:120                                     ; preds = %119
  br label %121

; <label>:121                                     ; preds = %120
  br label %122

; <label>:122                                     ; preds = %121, %39
  %123 = add nsw i32 %i.0, 1
  %124 = add nsw i32 %j.0, 1
  br label %25

; <label>:125                                     ; preds = %25
  br label %126

; <label>:126                                     ; preds = %125, %117, %107, %82, %54, %22
  %.0 = phi i32 [ %23, %22 ], [ %55, %54 ], [ %83, %82 ], [ %108, %107 ], [ -1, %117 ], [ %j.0, %125 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @handle_cgi_request(%struct.mg_connection* %conn, i8* %prog) #0 {
  %data_len = alloca i32, align 4
  %fdin = alloca [2 x i32], align 4
  %fdout = alloca [2 x i32], align 4
  %buf = alloca [16384 x i8], align 16
  %pbuf = alloca i8*, align 8
  %dir = alloca [4096 x i8], align 16
  %ri = alloca %struct.mg_request_info, align 8
  %blk = alloca %struct.cgi_env_block, align 8
  %fout = alloca %struct.file, align 8
  %1 = bitcast %struct.file* %fout to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = bitcast i8* %1 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %3 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %2, i32 0, i32 6
  call void @prepare_cgi_environment(%struct.mg_connection* %conn, i8* %prog, %struct.cgi_env_block* %blk)
  %4 = getelementptr inbounds [4096 x i8]* %dir, i32 0, i32 0
  %5 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %4, i64 4096, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %prog)
  %6 = getelementptr inbounds [4096 x i8]* %dir, i32 0, i32 0
  %7 = call i8* @strrchr(i8* %6, i32 47) #3
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds i8* %7, i32 1
  store i8 0, i8* %7
  br label %14

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds [4096 x i8]* %dir, i32 0, i64 0
  store i8 46, i8* %12, align 1
  %13 = getelementptr inbounds [4096 x i8]* %dir, i32 0, i64 1
  store i8 0, i8* %13, align 1
  br label %14

; <label>:14                                      ; preds = %11, %9
  %p.0 = phi i8* [ %10, %9 ], [ %prog, %11 ]
  %15 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i32 0
  %16 = call i32 @pipe(i32* %15) #1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

; <label>:18                                      ; preds = %14
  %19 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i32 0
  %20 = call i32 @pipe(i32* %19) #1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22                                      ; preds = %18, %14
  %23 = load i8** @http_500_error, align 8
  %24 = call i32* @__errno_location() #2
  %25 = load i32* %24
  %26 = call i8* @strerror(i32 %25) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %23, i8* getelementptr inbounds ([27 x i8]* @.str114, i32 0, i32 0), i8* %26)
  br label %178

; <label>:27                                      ; preds = %18
  %28 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 1
  %29 = getelementptr inbounds [4096 x i8]* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 3
  %31 = getelementptr inbounds [64 x i8*]* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  %33 = load i32* %32, align 4
  %34 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  %35 = load i32* %34, align 4
  %36 = getelementptr inbounds [4096 x i8]* %dir, i32 0, i32 0
  %37 = call i32 @spawn_process(%struct.mg_connection* %conn, i8* %p.0, i8* %29, i8** %31, i32 %33, i32 %35, i8* %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %44

; <label>:39                                      ; preds = %27
  %40 = load i8** @http_500_error, align 8
  %41 = call i32* @__errno_location() #2
  %42 = load i32* %41
  %43 = call i8* @strerror(i32 %42) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %40, i8* getelementptr inbounds ([34 x i8]* @.str115, i32 0, i32 0), i8* %prog, i8* %43)
  br label %178

; <label>:44                                      ; preds = %27
  %45 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  %46 = load i32* %45, align 4
  call void @set_close_on_exec(i32 %46)
  %47 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 1
  %48 = load i32* %47, align 4
  call void @set_close_on_exec(i32 %48)
  %49 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 0
  %50 = load i32* %49, align 4
  call void @set_close_on_exec(i32 %50)
  %51 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  %52 = load i32* %51, align 4
  call void @set_close_on_exec(i32 %52)
  %53 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  %54 = load i32* %53, align 4
  %55 = call i32 @close(i32 %54)
  %56 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  %57 = load i32* %56, align 4
  %58 = call i32 @close(i32 %57)
  %59 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  store i32 -1, i32* %59, align 4
  %60 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  store i32 -1, i32* %60, align 4
  %61 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 1
  %62 = load i32* %61, align 4
  %63 = call %struct._IO_FILE* @fdopen(i32 %62, i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0)) #1
  %64 = icmp eq %struct._IO_FILE* %63, null
  br i1 %64, label %70, label %65

; <label>:65                                      ; preds = %44
  %66 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 0
  %67 = load i32* %66, align 4
  %68 = call %struct._IO_FILE* @fdopen(i32 %67, i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0)) #1
  %69 = icmp eq %struct._IO_FILE* %68, null
  br i1 %69, label %70, label %75

; <label>:70                                      ; preds = %65, %44
  %out.0 = phi %struct._IO_FILE* [ null, %44 ], [ %68, %65 ]
  %71 = load i8** @http_500_error, align 8
  %72 = call i32* @__errno_location() #2
  %73 = load i32* %72
  %74 = call i8* @strerror(i32 %73) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %71, i8* getelementptr inbounds ([10 x i8]* @.str116, i32 0, i32 0), i8* %74)
  br label %178

; <label>:75                                      ; preds = %65
  call void @setbuf(%struct._IO_FILE* %63, i8* null) #1
  call void @setbuf(%struct._IO_FILE* %68, i8* null) #1
  %76 = getelementptr inbounds %struct.file* %fout, i32 0, i32 3
  store %struct._IO_FILE* %68, %struct._IO_FILE** %76, align 8
  %77 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %78 = getelementptr inbounds %struct.mg_request_info* %77, i32 0, i32 0
  %79 = load i8** %78, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0)) #3
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

; <label>:82                                      ; preds = %75
  %83 = call i32 @forward_body_data(%struct.mg_connection* %conn, %struct._IO_FILE* %63, i32 -1, %struct.ssl_st* null)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

; <label>:85                                      ; preds = %82
  br label %178

; <label>:86                                      ; preds = %82, %75
  %87 = call i32 @fclose(%struct._IO_FILE* %63)
  %88 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 1
  store i32 -1, i32* %88, align 4
  store i32 0, i32* %data_len, align 4
  %89 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i32 0
  %90 = call i32 @read_request(%struct._IO_FILE* %68, %struct.mg_connection* %conn, i8* %89, i32 16384, i32* %data_len)
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %96

; <label>:92                                      ; preds = %86
  %93 = load i8** @http_500_error, align 8
  %94 = load i32* %data_len, align 4
  %95 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i32 0
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %93, i8* getelementptr inbounds ([71 x i8]* @.str117, i32 0, i32 0), i32 16384, i32 %94, i8* %95)
  br label %178

; <label>:96                                      ; preds = %86
  %97 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i32 0
  store i8* %97, i8** %pbuf, align 8
  %98 = sub nsw i32 %90, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i64 %99
  store i8 0, i8* %100, align 1
  call void @parse_http_headers(i8** %pbuf, %struct.mg_request_info* %ri)
  %101 = call i8* @get_header(%struct.mg_request_info* %ri, i8* getelementptr inbounds ([7 x i8]* @.str119, i32 0, i32 0))
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %126

; <label>:103                                     ; preds = %96
  %104 = call i32 @atoi(i8* %101) #3
  %105 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 %104, i32* %105, align 4
  br label %106

; <label>:106                                     ; preds = %123, %103
  %status_text.0 = phi i8* [ %101, %103 ], [ %124, %123 ]
  %107 = load i8* %status_text.0
  %108 = zext i8 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = call i16** @__ctype_b_loc() #2
  %111 = load i16** %110
  %112 = getelementptr inbounds i16* %111, i64 %109
  %113 = load i16* %112
  %114 = zext i16 %113 to i32
  %115 = and i32 %114, 2048
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

; <label>:117                                     ; preds = %106
  %118 = load i8* %status_text.0
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 32
  br label %121

; <label>:121                                     ; preds = %117, %106
  %122 = phi i1 [ true, %106 ], [ %120, %117 ]
  br i1 %122, label %123, label %125

; <label>:123                                     ; preds = %121
  %124 = getelementptr inbounds i8* %status_text.0, i32 1
  br label %106

; <label>:125                                     ; preds = %121
  br label %134

; <label>:126                                     ; preds = %96
  %127 = call i8* @get_header(%struct.mg_request_info* %ri, i8* getelementptr inbounds ([9 x i8]* @.str120, i32 0, i32 0))
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %131

; <label>:129                                     ; preds = %126
  %130 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 302, i32* %130, align 4
  br label %133

; <label>:131                                     ; preds = %126
  %132 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 200, i32* %132, align 4
  br label %133

; <label>:133                                     ; preds = %131, %129
  br label %134

; <label>:134                                     ; preds = %133, %125
  %status_text.1 = phi i8* [ %status_text.0, %125 ], [ getelementptr inbounds ([3 x i8]* @.str118, i32 0, i32 0), %133 ]
  %135 = call i8* @get_header(%struct.mg_request_info* %ri, i8* getelementptr inbounds ([11 x i8]* @.str48, i32 0, i32 0))
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %143

; <label>:137                                     ; preds = %134
  %138 = call i8* @get_header(%struct.mg_request_info* %ri, i8* getelementptr inbounds ([11 x i8]* @.str48, i32 0, i32 0))
  %139 = call i32 @mg_strcasecmp(i8* %138, i8* getelementptr inbounds ([11 x i8]* @.str49, i32 0, i32 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

; <label>:141                                     ; preds = %137
  %142 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 11
  store i32 1, i32* %142, align 4
  br label %143

; <label>:143                                     ; preds = %141, %137, %134
  %144 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  %145 = load i32* %144, align 4
  %146 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([17 x i8]* @.str121, i32 0, i32 0), i32 %145, i8* %status_text.1)
  br label %147

; <label>:147                                     ; preds = %163, %143
  %i.0 = phi i32 [ 0, %143 ], [ %164, %163 ]
  %148 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 10
  %149 = load i32* %148, align 4
  %150 = icmp slt i32 %i.0, %149
  br i1 %150, label %151, label %165

; <label>:151                                     ; preds = %147
  %152 = sext i32 %i.0 to i64
  %153 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 11
  %154 = getelementptr inbounds [64 x %struct.mg_header]* %153, i32 0, i64 %152
  %155 = getelementptr inbounds %struct.mg_header* %154, i32 0, i32 0
  %156 = load i8** %155, align 8
  %157 = sext i32 %i.0 to i64
  %158 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 11
  %159 = getelementptr inbounds [64 x %struct.mg_header]* %158, i32 0, i64 %157
  %160 = getelementptr inbounds %struct.mg_header* %159, i32 0, i32 1
  %161 = load i8** %160, align 8
  %162 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([9 x i8]* @.str122, i32 0, i32 0), i8* %156, i8* %161)
  br label %163

; <label>:163                                     ; preds = %151
  %164 = add nsw i32 %i.0, 1
  br label %147

; <label>:165                                     ; preds = %147
  %166 = call i32 @mg_write(%struct.mg_connection* %conn, i8* getelementptr inbounds ([3 x i8]* @.str123, i32 0, i32 0), i64 2)
  %167 = getelementptr inbounds [16384 x i8]* %buf, i32 0, i32 0
  %168 = sext i32 %90 to i64
  %169 = getelementptr inbounds i8* %167, i64 %168
  %170 = load i32* %data_len, align 4
  %171 = sub nsw i32 %170, %90
  %172 = sext i32 %171 to i64
  %173 = call i32 @mg_write(%struct.mg_connection* %conn, i8* %169, i64 %172)
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %176 = load i64* %175, align 8
  %177 = add nsw i64 %176, %174
  store i64 %177, i64* %175, align 8
  call void @send_file_data(%struct.mg_connection* %conn, %struct.file* %fout, i64 0, i64 9223372036854775807)
  br label %178

; <label>:178                                     ; preds = %165, %92, %85, %70, %39, %22
  %in.0 = phi %struct._IO_FILE* [ null, %22 ], [ null, %39 ], [ %63, %70 ], [ null, %92 ], [ null, %165 ], [ %63, %85 ]
  %out.1 = phi %struct._IO_FILE* [ null, %22 ], [ null, %39 ], [ %out.0, %70 ], [ %68, %92 ], [ %68, %165 ], [ %68, %85 ]
  %pid.0 = phi i32 [ -1, %22 ], [ %37, %39 ], [ %37, %70 ], [ %37, %92 ], [ %37, %165 ], [ %37, %85 ]
  %179 = icmp ne i32 %pid.0, -1
  br i1 %179, label %180, label %182

; <label>:180                                     ; preds = %178
  %181 = call i32 @kill(i32 %pid.0, i32 9) #1
  br label %182

; <label>:182                                     ; preds = %180, %178
  %183 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  %184 = load i32* %183, align 4
  %185 = icmp ne i32 %184, -1
  br i1 %185, label %186, label %190

; <label>:186                                     ; preds = %182
  %187 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 0
  %188 = load i32* %187, align 4
  %189 = call i32 @close(i32 %188)
  br label %190

; <label>:190                                     ; preds = %186, %182
  %191 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  %192 = load i32* %191, align 4
  %193 = icmp ne i32 %192, -1
  br i1 %193, label %194, label %198

; <label>:194                                     ; preds = %190
  %195 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 1
  %196 = load i32* %195, align 4
  %197 = call i32 @close(i32 %196)
  br label %198

; <label>:198                                     ; preds = %194, %190
  %199 = icmp ne %struct._IO_FILE* %in.0, null
  br i1 %199, label %200, label %202

; <label>:200                                     ; preds = %198
  %201 = call i32 @fclose(%struct._IO_FILE* %in.0)
  br label %211

; <label>:202                                     ; preds = %198
  %203 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 1
  %204 = load i32* %203, align 4
  %205 = icmp ne i32 %204, -1
  br i1 %205, label %206, label %210

; <label>:206                                     ; preds = %202
  %207 = getelementptr inbounds [2 x i32]* %fdin, i32 0, i64 1
  %208 = load i32* %207, align 4
  %209 = call i32 @close(i32 %208)
  br label %210

; <label>:210                                     ; preds = %206, %202
  br label %211

; <label>:211                                     ; preds = %210, %200
  %212 = icmp ne %struct._IO_FILE* %out.1, null
  br i1 %212, label %213, label %215

; <label>:213                                     ; preds = %211
  %214 = call i32 @fclose(%struct._IO_FILE* %out.1)
  br label %224

; <label>:215                                     ; preds = %211
  %216 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 0
  %217 = load i32* %216, align 4
  %218 = icmp ne i32 %217, -1
  br i1 %218, label %219, label %223

; <label>:219                                     ; preds = %215
  %220 = getelementptr inbounds [2 x i32]* %fdout, i32 0, i64 0
  %221 = load i32* %220, align 4
  %222 = call i32 @close(i32 %221)
  br label %223

; <label>:223                                     ; preds = %219, %215
  br label %224

; <label>:224                                     ; preds = %223, %213
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @handle_ssi_file_request(%struct.mg_connection* %conn, i8* %path) #0 {
  %file = alloca %struct.file, align 8
  %mime_vec = alloca %struct.vec, align 8
  %1 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = bitcast i8* %1 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %3 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %2, i32 0, i32 6
  %4 = call i32 @mg_fopen(%struct.mg_connection* %conn, i8* %path, i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0), %struct.file* %file)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8** @http_500_error, align 8
  %8 = call i32* @__errno_location() #2
  %9 = load i32* %8
  %10 = call i8* @strerror(i32 %9) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %7, i8* getelementptr inbounds ([14 x i8]* @.str94, i32 0, i32 0), i8* %path, i8* %10)
  br label %21

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 11
  store i32 1, i32* %12, align 4
  call void @fclose_on_exec(%struct.file* %file)
  %13 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %14 = load %struct.mg_context** %13, align 8
  call void @get_mime_type(%struct.mg_context* %14, i8* %path, %struct.vec* %mime_vec)
  %15 = getelementptr inbounds %struct.vec* %mime_vec, i32 0, i32 1
  %16 = load i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.vec* %mime_vec, i32 0, i32 0
  %19 = load i8** %18, align 8
  %20 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([59 x i8]* @.str95, i32 0, i32 0), i32 %17, i8* %19)
  call void @send_ssi_file(%struct.mg_connection* %conn, i8* %path, %struct.file* %file, i32 0)
  call void @mg_fclose(%struct.file* %file)
  br label %21

; <label>:21                                      ; preds = %11, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @is_not_modified(%struct.mg_connection* %conn, %struct.file* %filep) #0 {
  %etag = alloca [64 x i8], align 16
  %1 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([18 x i8]* @.str74, i32 0, i32 0))
  %2 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([14 x i8]* @.str75, i32 0, i32 0))
  %3 = getelementptr inbounds [64 x i8]* %etag, i32 0, i32 0
  call void @construct_etag(i8* %3, i64 64, %struct.file* %filep)
  %4 = icmp ne i8* %2, null
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [64 x i8]* %etag, i32 0, i32 0
  %7 = call i32 @mg_strcasecmp(i8* %6, i8* %2)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

; <label>:9                                       ; preds = %5, %0
  %10 = icmp ne i8* %1, null
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %struct.file* %filep, i32 0, i32 1
  %13 = load i64* %12, align 8
  %14 = call i64 @parse_date_string(i8* %1)
  %15 = icmp sle i64 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %9
  %17 = phi i1 [ false, %9 ], [ %15, %11 ]
  br label %18

; <label>:18                                      ; preds = %16, %5
  %19 = phi i1 [ true, %5 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @construct_etag(i8* %buf, i64 %buf_len, %struct.file* %filep) #0 {
  %1 = getelementptr inbounds %struct.file* %filep, i32 0, i32 1
  %2 = load i64* %1, align 8
  %3 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %4 = load i64* %3, align 8
  %5 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* %buf, i64 %buf_len, i8* getelementptr inbounds ([10 x i8]* @.str92, i32 0, i32 0), i64 %2, i64 %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @parse_date_string(i8* %datetime) #0 {
  %month_str = alloca [32 x i8], align 16
  %second = alloca i32, align 4
  %minute = alloca i32, align 4
  %hour = alloca i32, align 4
  %day = alloca i32, align 4
  %year = alloca i32, align 4
  %1 = getelementptr inbounds [32 x i8]* %month_str, i32 0, i32 0
  %2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %datetime, i8* getelementptr inbounds ([19 x i8]* @.str76, i32 0, i32 0), i32* %day, i8* %1, i32* %year, i32* %hour, i32* %minute, i32* %second) #1
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %16, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds [32 x i8]* %month_str, i32 0, i32 0
  %6 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %datetime, i8* getelementptr inbounds ([19 x i8]* @.str77, i32 0, i32 0), i32* %day, i8* %5, i32* %year, i32* %hour, i32* %minute, i32* %second) #1
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %16, label %8

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds [32 x i8]* %month_str, i32 0, i32 0
  %10 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %datetime, i8* getelementptr inbounds ([25 x i8]* @.str78, i32 0, i32 0), i32* %day, i8* %9, i32* %year, i32* %hour, i32* %minute, i32* %second) #1
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %16, label %12

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds [32 x i8]* %month_str, i32 0, i32 0
  %14 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %datetime, i8* getelementptr inbounds ([19 x i8]* @.str79, i32 0, i32 0), i32* %day, i8* %13, i32* %year, i32* %hour, i32* %minute, i32* %second) #1
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %16, label %52

; <label>:16                                      ; preds = %12, %8, %4, %0
  %17 = load i32* %year, align 4
  %18 = icmp sgt i32 %17, 1970
  br i1 %18, label %19, label %52

; <label>:19                                      ; preds = %16
  %20 = getelementptr inbounds [32 x i8]* %month_str, i32 0, i32 0
  %21 = call i32 @get_month_index(i8* %20)
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %52

; <label>:23                                      ; preds = %19
  %24 = load i32* %year, align 4
  %25 = call i32 @num_leap_years(i32 %24)
  %26 = call i32 @num_leap_years(i32 1970)
  %27 = sub nsw i32 %25, %26
  %28 = load i32* %year, align 4
  %29 = sub nsw i32 %28, 1970
  store i32 %29, i32* %year, align 4
  %30 = load i32* %year, align 4
  %31 = mul nsw i32 %30, 365
  %32 = sext i32 %21 to i64
  %33 = getelementptr inbounds [12 x i16]* @parse_date_string.days_before_month, i32 0, i64 %32
  %34 = load i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = add nsw i32 %31, %35
  %37 = load i32* %day, align 4
  %38 = sub nsw i32 %37, 1
  %39 = add nsw i32 %36, %38
  %40 = add nsw i32 %39, %27
  %41 = mul nsw i32 %40, 24
  %42 = mul nsw i32 %41, 3600
  %43 = load i32* %hour, align 4
  %44 = mul nsw i32 %43, 3600
  %45 = add nsw i32 %42, %44
  %46 = load i32* %minute, align 4
  %47 = mul nsw i32 %46, 60
  %48 = add nsw i32 %45, %47
  %49 = load i32* %second, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  br label %52

; <label>:52                                      ; preds = %23, %19, %16, %12
  %result.0 = phi i64 [ %51, %23 ], [ 0, %19 ], [ 0, %16 ], [ 0, %12 ]
  ret i64 %result.0
}

; Function Attrs: nounwind uwtable
define internal i32 @get_month_index(i8* %s) #0 {
  br label %1

; <label>:1                                       ; preds = %11, %0
  %i.0 = phi i64 [ 0, %0 ], [ %12, %11 ]
  %2 = icmp ult i64 %i.0, 12
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %1
  %4 = getelementptr inbounds [12 x i8*]* @month_names, i32 0, i64 %i.0
  %5 = load i8** %4, align 8
  %6 = call i32 @strcmp(i8* %s, i8* %5) #3
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %3
  %9 = trunc i64 %i.0 to i32
  br label %14

; <label>:10                                      ; preds = %3
  br label %11

; <label>:11                                      ; preds = %10
  %12 = add i64 %i.0, 1
  br label %1

; <label>:13                                      ; preds = %1
  br label %14

; <label>:14                                      ; preds = %13, %8
  %.0 = phi i32 [ %9, %8 ], [ -1, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @num_leap_years(i32 %year) #0 {
  %1 = sdiv i32 %year, 4
  %2 = sdiv i32 %year, 100
  %3 = sub nsw i32 %1, %2
  %4 = sdiv i32 %year, 400
  %5 = add nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @mg_fopen(%struct.mg_connection* %conn, i8* %path, i8* %mode, %struct.file* %filep) #0 {
  %1 = call i32 @is_file_in_memory(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep)
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = call %struct._IO_FILE* @fopen(i8* %path, i8* %mode)
  %5 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  store %struct._IO_FILE* %4, %struct._IO_FILE** %5, align 8
  br label %6

; <label>:6                                       ; preds = %3, %0
  %7 = call i32 @is_file_opened(%struct.file* %filep)
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @fclose_on_exec(%struct.file* %filep) #0 {
  %1 = icmp ne %struct.file* %filep, null
  br i1 %1, label %2, label %11

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %4 = load %struct._IO_FILE** %3, align 8
  %5 = icmp ne %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %8 = load %struct._IO_FILE** %7, align 8
  %9 = call i32 @fileno(%struct._IO_FILE* %8) #1
  %10 = call i32 (i32, i32, ...)* @fcntl(i32 %9, i32 2, i32 1)
  br label %11

; <label>:11                                      ; preds = %6, %2, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_mime_type(%struct.mg_context* %ctx, i8* %path, %struct.vec* %vec) #0 {
  %ext_vec = alloca %struct.vec, align 8
  %mime_vec = alloca %struct.vec, align 8
  %1 = call i64 @strlen(i8* %path) #3
  %2 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %3 = getelementptr inbounds [24 x i8*]* %2, i32 0, i64 15
  %4 = load i8** %3, align 8
  br label %5

; <label>:5                                       ; preds = %23, %0
  %list.0 = phi i8* [ %4, %0 ], [ %6, %23 ]
  %6 = call i8* @next_option(i8* %list.0, %struct.vec* %ext_vec, %struct.vec* %mime_vec)
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %24

; <label>:8                                       ; preds = %5
  %9 = getelementptr inbounds i8* %path, i64 %1
  %10 = getelementptr inbounds %struct.vec* %ext_vec, i32 0, i32 1
  %11 = load i64* %10, align 8
  %12 = sub i64 0, %11
  %13 = getelementptr inbounds i8* %9, i64 %12
  %14 = getelementptr inbounds %struct.vec* %ext_vec, i32 0, i32 0
  %15 = load i8** %14, align 8
  %16 = getelementptr inbounds %struct.vec* %ext_vec, i32 0, i32 1
  %17 = load i64* %16, align 8
  %18 = call i32 @mg_strncasecmp(i8* %13, i8* %15, i64 %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20                                      ; preds = %8
  %21 = bitcast %struct.vec* %vec to i8*
  %22 = bitcast %struct.vec* %mime_vec to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  br label %31

; <label>:23                                      ; preds = %8
  br label %5

; <label>:24                                      ; preds = %5
  %25 = call i8* @mg_get_builtin_mime_type(i8* %path)
  %26 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %28 = load i8** %27, align 8
  %29 = call i64 @strlen(i8* %28) #3
  %30 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  br label %31

; <label>:31                                      ; preds = %24, %20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @send_ssi_file(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep, i32 %include_level) #0 {
  %buf = alloca [8192 x i8], align 16
  %1 = icmp sgt i32 %include_level, 10
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([36 x i8]* @.str96, i32 0, i32 0), i8* %path)
  br label %107

; <label>:3                                       ; preds = %0
  br label %4

; <label>:4                                       ; preds = %100, %3
  %len.0 = phi i32 [ 0, %3 ], [ %len.6, %100 ]
  %in_ssi_tag.0 = phi i32 [ 0, %3 ], [ %in_ssi_tag.4, %100 ]
  %5 = call i32 @mg_fgetc(%struct.file* %filep, i32 0)
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %101

; <label>:7                                       ; preds = %4
  %8 = icmp ne i32 %in_ssi_tag.0, 0
  br i1 %8, label %9, label %53

; <label>:9                                       ; preds = %7
  %10 = icmp eq i32 %5, 62
  br i1 %10, label %11, label %53

; <label>:11                                      ; preds = %9
  %12 = trunc i32 %5 to i8
  %13 = add nsw i32 %len.0, 1
  %14 = sext i32 %len.0 to i64
  %15 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %14
  store i8 %12, i8* %15, align 1
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %16
  store i8 0, i8* %17, align 1
  %18 = icmp sle i32 %13, 8192
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %11
  br label %22

; <label>:20                                      ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str97, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 3739, i8* getelementptr inbounds ([77 x i8]* @__PRETTY_FUNCTION__.send_ssi_file, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %22

; <label>:22                                      ; preds = %21, %19
  %23 = icmp slt i32 %13, 6
  br i1 %23, label %28, label %24

; <label>:24                                      ; preds = %22
  %25 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %26 = call i32 @memcmp(i8* %25, i8* getelementptr inbounds ([6 x i8]* @.str98, i32 0, i32 0), i64 5) #3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %24, %22
  %29 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %30 = sext i32 %13 to i64
  %31 = call i32 @mg_write(%struct.mg_connection* %conn, i8* %29, i64 %30)
  br label %52

; <label>:32                                      ; preds = %24
  %33 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %34 = getelementptr inbounds i8* %33, i64 5
  %35 = call i32 @memcmp(i8* %34, i8* getelementptr inbounds ([8 x i8]* @.str99, i32 0, i32 0), i64 7) #3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

; <label>:37                                      ; preds = %32
  %38 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %39 = getelementptr inbounds i8* %38, i64 12
  call void @do_ssi_include(%struct.mg_connection* %conn, i8* %path, i8* %39, i32 %include_level)
  br label %51

; <label>:40                                      ; preds = %32
  %41 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %42 = getelementptr inbounds i8* %41, i64 5
  %43 = call i32 @memcmp(i8* %42, i8* getelementptr inbounds ([5 x i8]* @.str100, i32 0, i32 0), i64 4) #3
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

; <label>:45                                      ; preds = %40
  %46 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %47 = getelementptr inbounds i8* %46, i64 9
  call void @do_ssi_exec(%struct.mg_connection* %conn, i8* %47)
  br label %50

; <label>:48                                      ; preds = %40
  %49 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([30 x i8]* @.str101, i32 0, i32 0), i8* %path, i8* %49)
  br label %50

; <label>:50                                      ; preds = %48, %45
  br label %51

; <label>:51                                      ; preds = %50, %37
  br label %52

; <label>:52                                      ; preds = %51, %28
  br label %100

; <label>:53                                      ; preds = %9, %7
  %54 = icmp ne i32 %in_ssi_tag.0, 0
  br i1 %54, label %55, label %72

; <label>:55                                      ; preds = %53
  %56 = icmp eq i32 %len.0, 5
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %55
  %58 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %59 = call i32 @memcmp(i8* %58, i8* getelementptr inbounds ([6 x i8]* @.str98, i32 0, i32 0), i64 5) #3
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %57
  br label %66

; <label>:62                                      ; preds = %57, %55
  %63 = icmp eq i32 %len.0, 8190
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %62
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([25 x i8]* @.str102, i32 0, i32 0), i8* %path)
  br label %65

; <label>:65                                      ; preds = %64, %62
  %len.1 = phi i32 [ 0, %64 ], [ %len.0, %62 ]
  br label %66

; <label>:66                                      ; preds = %65, %61
  %len.2 = phi i32 [ %len.0, %61 ], [ %len.1, %65 ]
  %in_ssi_tag.1 = phi i32 [ 0, %61 ], [ %in_ssi_tag.0, %65 ]
  %67 = and i32 %5, 255
  %68 = trunc i32 %67 to i8
  %69 = add nsw i32 %len.2, 1
  %70 = sext i32 %len.2 to i64
  %71 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %70
  store i8 %68, i8* %71, align 1
  br label %99

; <label>:72                                      ; preds = %53
  %73 = icmp eq i32 %5, 60
  br i1 %73, label %74, label %86

; <label>:74                                      ; preds = %72
  %75 = icmp sgt i32 %len.0, 0
  br i1 %75, label %76, label %80

; <label>:76                                      ; preds = %74
  %77 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %78 = sext i32 %len.0 to i64
  %79 = call i32 @mg_write(%struct.mg_connection* %conn, i8* %77, i64 %78)
  br label %80

; <label>:80                                      ; preds = %76, %74
  %81 = and i32 %5, 255
  %82 = trunc i32 %81 to i8
  %83 = add nsw i32 0, 1
  %84 = sext i32 0 to i64
  %85 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %84
  store i8 %82, i8* %85, align 1
  br label %98

; <label>:86                                      ; preds = %72
  %87 = and i32 %5, 255
  %88 = trunc i32 %87 to i8
  %89 = add nsw i32 %len.0, 1
  %90 = sext i32 %len.0 to i64
  %91 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %90
  store i8 %88, i8* %91, align 1
  %92 = icmp eq i32 %89, 8192
  br i1 %92, label %93, label %97

; <label>:93                                      ; preds = %86
  %94 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %95 = sext i32 %89 to i64
  %96 = call i32 @mg_write(%struct.mg_connection* %conn, i8* %94, i64 %95)
  br label %97

; <label>:97                                      ; preds = %93, %86
  %len.3 = phi i32 [ 0, %93 ], [ %89, %86 ]
  br label %98

; <label>:98                                      ; preds = %97, %80
  %len.4 = phi i32 [ %83, %80 ], [ %len.3, %97 ]
  %in_ssi_tag.2 = phi i32 [ 1, %80 ], [ %in_ssi_tag.0, %97 ]
  br label %99

; <label>:99                                      ; preds = %98, %66
  %len.5 = phi i32 [ %69, %66 ], [ %len.4, %98 ]
  %in_ssi_tag.3 = phi i32 [ %in_ssi_tag.1, %66 ], [ %in_ssi_tag.2, %98 ]
  br label %100

; <label>:100                                     ; preds = %99, %52
  %len.6 = phi i32 [ 0, %52 ], [ %len.5, %99 ]
  %in_ssi_tag.4 = phi i32 [ 0, %52 ], [ %in_ssi_tag.3, %99 ]
  br label %4

; <label>:101                                     ; preds = %4
  %102 = icmp sgt i32 %len.0, 0
  br i1 %102, label %103, label %107

; <label>:103                                     ; preds = %101
  %104 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %105 = sext i32 %len.0 to i64
  %106 = call i32 @mg_write(%struct.mg_connection* %conn, i8* %104, i64 %105)
  br label %107

; <label>:107                                     ; preds = %103, %101, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mg_fclose(%struct.file* %filep) #0 {
  %1 = icmp ne %struct.file* %filep, null
  br i1 %1, label %2, label %10

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %4 = load %struct._IO_FILE** %3, align 8
  %5 = icmp ne %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %8 = load %struct._IO_FILE** %7, align 8
  %9 = call i32 @fclose(%struct._IO_FILE* %8)
  br label %10

; <label>:10                                      ; preds = %6, %2, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mg_fgetc(%struct.file* %filep, i32 %offset) #0 {
  %1 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  %2 = load i8** %1, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %18

; <label>:4                                       ; preds = %0
  %5 = icmp sge i32 %offset, 0
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %4
  %7 = sext i32 %offset to i64
  %8 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %9 = load i64* %8, align 8
  %10 = icmp slt i64 %7, %9
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %6
  %12 = sext i32 %offset to i64
  %13 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  %14 = load i8** %13, align 8
  %15 = getelementptr inbounds i8* %14, i64 %12
  %16 = load i8* %15
  %17 = zext i8 %16 to i32
  br label %27

; <label>:18                                      ; preds = %6, %4, %0
  %19 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %20 = load %struct._IO_FILE** %19, align 8
  %21 = icmp ne %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %26

; <label>:22                                      ; preds = %18
  %23 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %24 = load %struct._IO_FILE** %23, align 8
  %25 = call i32 @fgetc(%struct._IO_FILE* %24)
  br label %27

; <label>:26                                      ; preds = %18
  br label %27

; <label>:27                                      ; preds = %26, %22, %11
  %.0 = phi i32 [ %17, %11 ], [ %25, %22 ], [ -1, %26 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @do_ssi_include(%struct.mg_connection* %conn, i8* %ssi, i8* %tag, i32 %include_level) #0 {
  %file_name = alloca [8192 x i8], align 16
  %path = alloca [4096 x i8], align 16
  %file = alloca %struct.file, align 8
  %1 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = bitcast i8* %1 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %3 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %2, i32 0, i32 6
  %4 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %5 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %tag, i8* getelementptr inbounds ([17 x i8]* @.str106, i32 0, i32 0), i8* %4) #1
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %9 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %10 = load %struct.mg_context** %9, align 8
  %11 = getelementptr inbounds %struct.mg_context* %10, i32 0, i32 2
  %12 = getelementptr inbounds [24 x i8*]* %11, i32 0, i64 17
  %13 = load i8** %12, align 8
  %14 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %15 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %8, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str107, i32 0, i32 0), i8* %13, i32 47, i8* %14)
  br label %53

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %18 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %tag, i8* getelementptr inbounds ([17 x i8]* @.str108, i32 0, i32 0), i8* %17) #1
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

; <label>:20                                      ; preds = %16
  %21 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %22 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %23 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %21, i64 4096, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %22)
  br label %52

; <label>:24                                      ; preds = %16
  %25 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %26 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %tag, i8* getelementptr inbounds ([14 x i8]* @.str109, i32 0, i32 0), i8* %25) #1
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %32, label %28

; <label>:28                                      ; preds = %24
  %29 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %30 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %tag, i8* getelementptr inbounds ([9 x i8]* @.str103, i32 0, i32 0), i8* %29) #1
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %50

; <label>:32                                      ; preds = %28, %24
  %33 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %34 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %33, i64 4096, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %ssi)
  %35 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %36 = call i8* @strrchr(i8* %35, i32 47) #3
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %32
  %39 = getelementptr inbounds i8* %36, i64 1
  store i8 0, i8* %39
  br label %40

; <label>:40                                      ; preds = %38, %32
  %41 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %42 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %43 = call i64 @strlen(i8* %42) #3
  %44 = getelementptr inbounds i8* %41, i64 %43
  %45 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %46 = call i64 @strlen(i8* %45) #3
  %47 = sub i64 4096, %46
  %48 = getelementptr inbounds [8192 x i8]* %file_name, i32 0, i32 0
  %49 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %44, i64 %47, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* %48)
  br label %51

; <label>:50                                      ; preds = %28
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([23 x i8]* @.str110, i32 0, i32 0), i8* %tag)
  br label %83

; <label>:51                                      ; preds = %40
  br label %52

; <label>:52                                      ; preds = %51, %20
  br label %53

; <label>:53                                      ; preds = %52, %7
  %54 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %55 = call i32 @mg_fopen(%struct.mg_connection* %conn, i8* %54, i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0), %struct.file* %file)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

; <label>:57                                      ; preds = %53
  %58 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %59 = call i32* @__errno_location() #2
  %60 = load i32* %59
  %61 = call i8* @strerror(i32 %60) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([46 x i8]* @.str111, i32 0, i32 0), i8* %tag, i8* %58, i8* %61)
  br label %83

; <label>:62                                      ; preds = %53
  call void @fclose_on_exec(%struct.file* %file)
  %63 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %64 = load %struct.mg_context** %63, align 8
  %65 = getelementptr inbounds %struct.mg_context* %64, i32 0, i32 2
  %66 = getelementptr inbounds [24 x i8*]* %65, i32 0, i64 6
  %67 = load i8** %66, align 8
  %68 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %69 = load %struct.mg_context** %68, align 8
  %70 = getelementptr inbounds %struct.mg_context* %69, i32 0, i32 2
  %71 = getelementptr inbounds [24 x i8*]* %70, i32 0, i64 6
  %72 = load i8** %71, align 8
  %73 = call i64 @strlen(i8* %72) #3
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %76 = call i32 @match_prefix(i8* %67, i32 %74, i8* %75)
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %81

; <label>:78                                      ; preds = %62
  %79 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %80 = add nsw i32 %include_level, 1
  call void @send_ssi_file(%struct.mg_connection* %conn, i8* %79, %struct.file* %file, i32 %80)
  br label %82

; <label>:81                                      ; preds = %62
  call void @send_file_data(%struct.mg_connection* %conn, %struct.file* %file, i64 0, i64 9223372036854775807)
  br label %82

; <label>:82                                      ; preds = %81, %78
  call void @mg_fclose(%struct.file* %file)
  br label %83

; <label>:83                                      ; preds = %82, %57, %50
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_ssi_exec(%struct.mg_connection* %conn, i8* %tag) #0 {
  %cmd = alloca [8192 x i8], align 16
  %file = alloca %struct.file, align 8
  %1 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = bitcast i8* %1 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %3 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %2, i32 0, i32 6
  %4 = getelementptr inbounds [8192 x i8]* %cmd, i32 0, i32 0
  %5 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %tag, i8* getelementptr inbounds ([9 x i8]* @.str103, i32 0, i32 0), i8* %4) #1
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([20 x i8]* @.str104, i32 0, i32 0), i8* %tag)
  br label %23

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds [8192 x i8]* %cmd, i32 0, i32 0
  %10 = call %struct._IO_FILE* @popen(i8* %9, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0))
  %11 = getelementptr inbounds %struct.file* %file, i32 0, i32 3
  store %struct._IO_FILE* %10, %struct._IO_FILE** %11, align 8
  %12 = icmp eq %struct._IO_FILE* %10, null
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %8
  %14 = getelementptr inbounds [8192 x i8]* %cmd, i32 0, i32 0
  %15 = call i32* @__errno_location() #2
  %16 = load i32* %15
  %17 = call i8* @strerror(i32 %16) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([27 x i8]* @.str105, i32 0, i32 0), i8* %14, i8* %17)
  br label %22

; <label>:18                                      ; preds = %8
  call void @send_file_data(%struct.mg_connection* %conn, %struct.file* %file, i64 0, i64 9223372036854775807)
  %19 = getelementptr inbounds %struct.file* %file, i32 0, i32 3
  %20 = load %struct._IO_FILE** %19, align 8
  %21 = call i32 @pclose(%struct._IO_FILE* %20)
  br label %22

; <label>:22                                      ; preds = %18, %13
  br label %23

; <label>:23                                      ; preds = %22, %7
  ret void
}

declare %struct._IO_FILE* @popen(i8*, i8*)

; Function Attrs: nounwind uwtable
define internal void @send_file_data(%struct.mg_connection* %conn, %struct.file* %filep, i64 %offset, i64 %len) #0 {
  %buf = alloca [8192 x i8], align 16
  %1 = icmp slt i64 %offset, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %13

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %5 = load i64* %4, align 8
  %6 = icmp sgt i64 %offset, %5
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %3
  %8 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %9 = load i64* %8, align 8
  br label %11

; <label>:10                                      ; preds = %3
  br label %11

; <label>:11                                      ; preds = %10, %7
  %12 = phi i64 [ %9, %7 ], [ %offset, %10 ]
  br label %13

; <label>:13                                      ; preds = %11, %2
  %14 = phi i64 [ 0, %2 ], [ %12, %11 ]
  %15 = icmp sgt i64 %len, 0
  br i1 %15, label %16, label %38

; <label>:16                                      ; preds = %13
  %17 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  %18 = load i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %38

; <label>:20                                      ; preds = %16
  %21 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %22 = load i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %38

; <label>:24                                      ; preds = %20
  %25 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %26 = load i64* %25, align 8
  %27 = sub nsw i64 %26, %14
  %28 = icmp sgt i64 %len, %27
  br i1 %28, label %29, label %33

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %31 = load i64* %30, align 8
  %32 = sub nsw i64 %31, %14
  br label %33

; <label>:33                                      ; preds = %29, %24
  %.0 = phi i64 [ %32, %29 ], [ %len, %24 ]
  %34 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  %35 = load i8** %34, align 8
  %36 = getelementptr inbounds i8* %35, i64 %14
  %37 = call i32 @mg_write(%struct.mg_connection* %conn, i8* %36, i64 %.0)
  br label %79

; <label>:38                                      ; preds = %20, %16, %13
  %39 = icmp sgt i64 %len, 0
  br i1 %39, label %40, label %78

; <label>:40                                      ; preds = %38
  %41 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %42 = load %struct._IO_FILE** %41, align 8
  %43 = icmp ne %struct._IO_FILE* %42, null
  br i1 %43, label %44, label %78

; <label>:44                                      ; preds = %40
  %45 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %46 = load %struct._IO_FILE** %45, align 8
  %47 = call i32 @fseeko(%struct._IO_FILE* %46, i64 %14, i32 0)
  br label %48

; <label>:48                                      ; preds = %70, %44
  %.1 = phi i64 [ %len, %44 ], [ %76, %70 ]
  %49 = icmp sgt i64 %.1, 0
  br i1 %49, label %50, label %77

; <label>:50                                      ; preds = %48
  %51 = sext i32 8192 to i64
  %52 = icmp sgt i64 %51, %.1
  br i1 %52, label %53, label %55

; <label>:53                                      ; preds = %50
  %54 = trunc i64 %.1 to i32
  br label %55

; <label>:55                                      ; preds = %53, %50
  %to_read.0 = phi i32 [ %54, %53 ], [ 8192, %50 ]
  %56 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %57 = sext i32 %to_read.0 to i64
  %58 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %59 = load %struct._IO_FILE** %58, align 8
  %60 = call i64 @fread(i8* %56, i64 1, i64 %57, %struct._IO_FILE* %59)
  %61 = trunc i64 %60 to i32
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %55
  br label %77

; <label>:64                                      ; preds = %55
  %65 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %66 = sext i32 %61 to i64
  %67 = call i32 @mg_write(%struct.mg_connection* %conn, i8* %65, i64 %66)
  %68 = icmp ne i32 %67, %61
  br i1 %68, label %69, label %70

; <label>:69                                      ; preds = %64
  br label %77

; <label>:70                                      ; preds = %64
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %73 = load i64* %72, align 8
  %74 = add nsw i64 %73, %71
  store i64 %74, i64* %72, align 8
  %75 = sext i32 %67 to i64
  %76 = sub nsw i64 %.1, %75
  br label %48

; <label>:77                                      ; preds = %69, %63, %48
  br label %78

; <label>:78                                      ; preds = %77, %40, %38
  br label %79

; <label>:79                                      ; preds = %78, %33
  ret void
}

declare i32 @pclose(%struct._IO_FILE*)

declare i32 @fseeko(%struct._IO_FILE*, i64, i32)

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*)

; Function Attrs: nounwind uwtable
define internal i32 @mg_snprintf(%struct.mg_connection* %conn, i8* %buf, i64 %buflen, i8* %fmt, ...) #0 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %2 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.va_start(i8* %2)
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %4 = call i32 @mg_vsnprintf(%struct.mg_connection* %conn, i8* %buf, i64 %buflen, i8* %fmt, %struct.__va_list_tag* %3)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_end(i8* %6)
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @mg_vsnprintf(%struct.mg_connection* %conn, i8* %buf, i64 %buflen, i8* %fmt, %struct.__va_list_tag* %ap) #0 {
  %1 = icmp eq i64 %buflen, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  br label %22

; <label>:3                                       ; preds = %0
  %4 = call i32 @vsnprintf(i8* %buf, i64 %buflen, i8* %fmt, %struct.__va_list_tag* %ap) #1
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %3
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([16 x i8]* @.str112, i32 0, i32 0))
  br label %19

; <label>:7                                       ; preds = %3
  %8 = trunc i64 %buflen to i32
  %9 = icmp sge i32 %4, %8
  br i1 %9, label %10, label %18

; <label>:10                                      ; preds = %7
  %11 = icmp sgt i32 %4, 200
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %10
  br label %14

; <label>:13                                      ; preds = %10
  br label %14

; <label>:14                                      ; preds = %13, %12
  %15 = phi i32 [ 200, %12 ], [ %4, %13 ]
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([36 x i8]* @.str113, i32 0, i32 0), i32 %15, i8* %buf)
  %16 = trunc i64 %buflen to i32
  %17 = sub nsw i32 %16, 1
  br label %18

; <label>:18                                      ; preds = %14, %7
  %n.0 = phi i32 [ %17, %14 ], [ %4, %7 ]
  br label %19

; <label>:19                                      ; preds = %18, %6
  %n.1 = phi i32 [ 0, %6 ], [ %n.0, %18 ]
  %20 = sext i32 %n.1 to i64
  %21 = getelementptr inbounds i8* %buf, i64 %20
  store i8 0, i8* %21
  br label %22

; <label>:22                                      ; preds = %19, %2
  %.0 = phi i32 [ 0, %2 ], [ %n.1, %19 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #1

declare i32 @fgetc(%struct._IO_FILE*)

; Function Attrs: nounwind uwtable
define internal i8* @next_option(i8* %list, %struct.vec* %val, %struct.vec* %eq_val) #0 {
  %1 = icmp eq i8* %list, null
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = load i8* %list
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %2, %0
  br label %73

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  store i8* %list, i8** %8, align 8
  %9 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  %10 = load i8** %9, align 8
  %11 = call i8* @strchr(i8* %10, i32 44) #3
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %21

; <label>:13                                      ; preds = %7
  %14 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  %15 = load i8** %14, align 8
  %16 = ptrtoint i8* %11 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = getelementptr inbounds %struct.vec* %val, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds i8* %11, i32 1
  br label %34

; <label>:21                                      ; preds = %7
  %22 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  %23 = load i8** %22, align 8
  %24 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  %25 = load i8** %24, align 8
  %26 = call i64 @strlen(i8* %25) #3
  %27 = getelementptr inbounds i8* %23, i64 %26
  %28 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  %29 = load i8** %28, align 8
  %30 = ptrtoint i8* %27 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = getelementptr inbounds %struct.vec* %val, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  br label %34

; <label>:34                                      ; preds = %21, %13
  %.0 = phi i8* [ %20, %13 ], [ %27, %21 ]
  %35 = icmp ne %struct.vec* %eq_val, null
  br i1 %35, label %36, label %72

; <label>:36                                      ; preds = %34
  %37 = getelementptr inbounds %struct.vec* %eq_val, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  %39 = load i8** %38, align 8
  %40 = getelementptr inbounds %struct.vec* %val, i32 0, i32 1
  %41 = load i64* %40, align 8
  %42 = call i8* @memchr(i8* %39, i32 61, i64 %41) #3
  %43 = getelementptr inbounds %struct.vec* %eq_val, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.vec* %eq_val, i32 0, i32 0
  %45 = load i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %71

; <label>:47                                      ; preds = %36
  %48 = getelementptr inbounds %struct.vec* %eq_val, i32 0, i32 0
  %49 = load i8** %48, align 8
  %50 = getelementptr inbounds i8* %49, i32 1
  store i8* %50, i8** %48, align 8
  %51 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  %52 = load i8** %51, align 8
  %53 = getelementptr inbounds %struct.vec* %val, i32 0, i32 1
  %54 = load i64* %53, align 8
  %55 = getelementptr inbounds i8* %52, i64 %54
  %56 = getelementptr inbounds %struct.vec* %eq_val, i32 0, i32 0
  %57 = load i8** %56, align 8
  %58 = ptrtoint i8* %55 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %struct.vec* %eq_val, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.vec* %eq_val, i32 0, i32 0
  %63 = load i8** %62, align 8
  %64 = getelementptr inbounds %struct.vec* %val, i32 0, i32 0
  %65 = load i8** %64, align 8
  %66 = ptrtoint i8* %63 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sub nsw i64 %68, 1
  %70 = getelementptr inbounds %struct.vec* %val, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  br label %71

; <label>:71                                      ; preds = %47, %36
  br label %72

; <label>:72                                      ; preds = %71, %34
  br label %73

; <label>:73                                      ; preds = %72, %6
  %.1 = phi i8* [ null, %6 ], [ %.0, %72 ]
  ret i8* %.1
}

declare i32 @fcntl(i32, i32, ...)

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_file_in_memory(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep) #0 {
  %size = alloca i64, align 8
  store i64 0, i64* %size, align 8
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %2 = load %struct.mg_context** %1, align 8
  %3 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.mg_callbacks* %3, i32 0, i32 7
  %5 = load i8* (%struct.mg_connection*, i8*, i64*)** %4, align 8
  %6 = icmp eq i8* (%struct.mg_connection*, i8*, i64*)* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  br label %15

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %10 = load %struct.mg_context** %9, align 8
  %11 = getelementptr inbounds %struct.mg_context* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.mg_callbacks* %11, i32 0, i32 7
  %13 = load i8* (%struct.mg_connection*, i8*, i64*)** %12, align 8
  %14 = call i8* %13(%struct.mg_connection* %conn, i8* %path, i64* %size)
  br label %15

; <label>:15                                      ; preds = %8, %7
  %16 = phi i8* [ null, %7 ], [ %14, %8 ]
  %17 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  store i8* %16, i8** %17, align 8
  %18 = icmp ne i8* %16, null
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %15
  %20 = load i64* %size, align 8
  %21 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  store i64 %20, i64* %21, align 8
  br label %22

; <label>:22                                      ; preds = %19, %15
  %23 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  %24 = load i8** %23, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i32
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @is_file_opened(%struct.file* %filep) #0 {
  %1 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  %2 = load i8** %1, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %6 = load %struct._IO_FILE** %5, align 8
  %7 = icmp ne %struct._IO_FILE* %6, null
  br label %8

; <label>:8                                       ; preds = %4, %0
  %9 = phi i1 [ true, %0 ], [ %7, %4 ]
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @prepare_cgi_environment(%struct.mg_connection* %conn, i8* %prog, %struct.cgi_env_block* %blk) #0 {
  %var_vec = alloca %struct.vec, align 8
  %src_addr = alloca [50 x i8], align 16
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %2 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 4
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 2
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 0
  store %struct.mg_connection* %conn, %struct.mg_connection** %4, align 8
  %5 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %6 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %7 = getelementptr inbounds %struct.socket* %6, i32 0, i32 2
  call void @sockaddr_to_string(i8* %5, i64 50, %union.usa* %7)
  %8 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %9 = load %struct.mg_context** %8, align 8
  %10 = getelementptr inbounds %struct.mg_context* %9, i32 0, i32 2
  %11 = getelementptr inbounds [24 x i8*]* %10, i32 0, i64 5
  %12 = load i8** %11, align 8
  %13 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([15 x i8]* @.str140, i32 0, i32 0), i8* %12)
  %14 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %15 = load %struct.mg_context** %14, align 8
  %16 = getelementptr inbounds %struct.mg_context* %15, i32 0, i32 2
  %17 = getelementptr inbounds [24 x i8*]* %16, i32 0, i64 17
  %18 = load i8** %17, align 8
  %19 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([15 x i8]* @.str141, i32 0, i32 0), i8* %18)
  %20 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %21 = load %struct.mg_context** %20, align 8
  %22 = getelementptr inbounds %struct.mg_context* %21, i32 0, i32 2
  %23 = getelementptr inbounds [24 x i8*]* %22, i32 0, i64 17
  %24 = load i8** %23, align 8
  %25 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([17 x i8]* @.str142, i32 0, i32 0), i8* %24)
  %26 = call i8* @mg_version()
  %27 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([22 x i8]* @.str143, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str144, i32 0, i32 0), i8* %26)
  %28 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str145, i32 0, i32 0))
  %29 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8]* @.str146, i32 0, i32 0))
  %30 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str147, i32 0, i32 0))
  %31 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %32 = getelementptr inbounds %struct.socket* %31, i32 0, i32 1
  %33 = bitcast %union.usa* %32 to %struct.sockaddr_in*
  %34 = getelementptr inbounds %struct.sockaddr_in* %33, i32 0, i32 1
  %35 = load i16* %34, align 2
  %36 = call zeroext i16 @ntohs(i16 zeroext %35) #2
  %37 = zext i16 %36 to i32
  %38 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([15 x i8]* @.str148, i32 0, i32 0), i32 %37)
  %39 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 0
  %40 = load i8** %39, align 8
  %41 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([18 x i8]* @.str149, i32 0, i32 0), i8* %40)
  %42 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %43 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([15 x i8]* @.str150, i32 0, i32 0), i8* %42)
  %44 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 6
  %45 = load i32* %44, align 4
  %46 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([15 x i8]* @.str151, i32 0, i32 0), i32 %45)
  %47 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %48 = load i8** %47, align 8
  %49 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 3
  %50 = load i8** %49, align 8
  %51 = icmp eq i8* %50, null
  %52 = select i1 %51, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str153, i32 0, i32 0)
  %53 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 3
  %54 = load i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %0
  br label %60

; <label>:57                                      ; preds = %0
  %58 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 3
  %59 = load i8** %58, align 8
  br label %60

; <label>:60                                      ; preds = %57, %56
  %61 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %56 ], [ %59, %57 ]
  %62 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([19 x i8]* @.str152, i32 0, i32 0), i8* %48, i8* %52, i8* %61)
  %63 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 10
  %64 = load i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %81

; <label>:66                                      ; preds = %60
  %67 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %68 = load i8** %67, align 8
  %69 = call i64 @strlen(i8* %68) #3
  %70 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 10
  %71 = load i8** %70, align 8
  %72 = call i64 @strlen(i8* %71) #3
  %73 = sub i64 %69, %72
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %76 = load i8** %75, align 8
  %77 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([17 x i8]* @.str154, i32 0, i32 0), i32 %74, i8* %76)
  %78 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 10
  %79 = load i8** %78, align 8
  %80 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([13 x i8]* @.str155, i32 0, i32 0), i8* %79)
  br label %105

; <label>:81                                      ; preds = %60
  %82 = call i8* @strrchr(i8* %prog, i32 47) #3
  %83 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %84 = load i8** %83, align 8
  %85 = call i8* @strrchr(i8* %84, i32 47) #3
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %81
  br label %95

; <label>:88                                      ; preds = %81
  %89 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %90 = load i8** %89, align 8
  %91 = ptrtoint i8* %85 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  br label %95

; <label>:95                                      ; preds = %88, %87
  %96 = phi i32 [ 0, %87 ], [ %94, %88 ]
  %97 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 1
  %98 = load i8** %97, align 8
  %99 = icmp eq i8* %82, null
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %95
  br label %102

; <label>:101                                     ; preds = %95
  br label %102

; <label>:102                                     ; preds = %101, %100
  %103 = phi i8* [ %prog, %100 ], [ %82, %101 ]
  %104 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([19 x i8]* @.str156, i32 0, i32 0), i32 %96, i8* %98, i8* %103)
  br label %105

; <label>:105                                     ; preds = %102, %66
  %106 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([19 x i8]* @.str157, i32 0, i32 0), i8* %prog)
  %107 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([19 x i8]* @.str158, i32 0, i32 0), i8* %prog)
  %108 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %109 = load %struct.ssl_st** %108, align 8
  %110 = icmp eq %struct.ssl_st* %109, null
  %111 = select i1 %110, i8* getelementptr inbounds ([4 x i8]* @.str160, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str161, i32 0, i32 0)
  %112 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([9 x i8]* @.str159, i32 0, i32 0), i8* %111)
  %113 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([13 x i8]* @.str18, i32 0, i32 0))
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %117

; <label>:115                                     ; preds = %105
  %116 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([16 x i8]* @.str162, i32 0, i32 0), i8* %113)
  br label %117

; <label>:117                                     ; preds = %115, %105
  %118 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 3
  %119 = load i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %125

; <label>:121                                     ; preds = %117
  %122 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 3
  %123 = load i8** %122, align 8
  %124 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([16 x i8]* @.str163, i32 0, i32 0), i8* %123)
  br label %125

; <label>:125                                     ; preds = %121, %117
  %126 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([15 x i8]* @.str164, i32 0, i32 0))
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %130

; <label>:128                                     ; preds = %125
  %129 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([18 x i8]* @.str165, i32 0, i32 0), i8* %126)
  br label %130

; <label>:130                                     ; preds = %128, %125
  %131 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8]* @.str166, i32 0, i32 0)) #1
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %135

; <label>:133                                     ; preds = %130
  %134 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([8 x i8]* @.str167, i32 0, i32 0), i8* %131)
  br label %135

; <label>:135                                     ; preds = %133, %130
  %136 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8]* @.str168, i32 0, i32 0)) #1
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %140

; <label>:138                                     ; preds = %135
  %139 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([19 x i8]* @.str169, i32 0, i32 0), i8* %136)
  br label %140

; <label>:140                                     ; preds = %138, %135
  %141 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8]* @.str170, i32 0, i32 0)) #1
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %145

; <label>:143                                     ; preds = %140
  %144 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([11 x i8]* @.str171, i32 0, i32 0), i8* %141)
  br label %145

; <label>:145                                     ; preds = %143, %140
  %146 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 4
  %147 = load i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %154

; <label>:149                                     ; preds = %145
  %150 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 4
  %151 = load i8** %150, align 8
  %152 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([15 x i8]* @.str172, i32 0, i32 0), i8* %151)
  %153 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str173, i32 0, i32 0))
  br label %154

; <label>:154                                     ; preds = %149, %145
  br label %155

; <label>:155                                     ; preds = %194, %154
  %i.0 = phi i32 [ 0, %154 ], [ %195, %194 ]
  %156 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 10
  %157 = load i32* %156, align 4
  %158 = icmp slt i32 %i.0, %157
  br i1 %158, label %159, label %196

; <label>:159                                     ; preds = %155
  %160 = sext i32 %i.0 to i64
  %161 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 11
  %162 = getelementptr inbounds [64 x %struct.mg_header]* %161, i32 0, i64 %160
  %163 = getelementptr inbounds %struct.mg_header* %162, i32 0, i32 0
  %164 = load i8** %163, align 8
  %165 = sext i32 %i.0 to i64
  %166 = getelementptr inbounds %struct.mg_request_info* %1, i32 0, i32 11
  %167 = getelementptr inbounds [64 x %struct.mg_header]* %166, i32 0, i64 %165
  %168 = getelementptr inbounds %struct.mg_header* %167, i32 0, i32 1
  %169 = load i8** %168, align 8
  %170 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([11 x i8]* @.str174, i32 0, i32 0), i8* %164, i8* %169)
  br label %171

; <label>:171                                     ; preds = %191, %159
  %p.0 = phi i8* [ %170, %159 ], [ %192, %191 ]
  %172 = load i8* %p.0
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 61
  br i1 %174, label %175, label %179

; <label>:175                                     ; preds = %171
  %176 = load i8* %p.0
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br label %179

; <label>:179                                     ; preds = %175, %171
  %180 = phi i1 [ false, %171 ], [ %178, %175 ]
  br i1 %180, label %181, label %193

; <label>:181                                     ; preds = %179
  %182 = load i8* %p.0
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 45
  br i1 %184, label %185, label %186

; <label>:185                                     ; preds = %181
  store i8 95, i8* %p.0
  br label %186

; <label>:186                                     ; preds = %185, %181
  %187 = load i8* %p.0
  %188 = zext i8 %187 to i32
  %189 = call i32 @toupper(i32 %188) #1
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %p.0
  br label %191

; <label>:191                                     ; preds = %186
  %192 = getelementptr inbounds i8* %p.0, i32 1
  br label %171

; <label>:193                                     ; preds = %179
  br label %194

; <label>:194                                     ; preds = %193
  %195 = add nsw i32 %i.0, 1
  br label %155

; <label>:196                                     ; preds = %155
  %197 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %198 = load %struct.mg_context** %197, align 8
  %199 = getelementptr inbounds %struct.mg_context* %198, i32 0, i32 2
  %200 = getelementptr inbounds [24 x i8*]* %199, i32 0, i64 1
  %201 = load i8** %200, align 8
  br label %202

; <label>:202                                     ; preds = %205, %196
  %s.0 = phi i8* [ %201, %196 ], [ %203, %205 ]
  %203 = call i8* @next_option(i8* %s.0, %struct.vec* %var_vec, %struct.vec* null)
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %212

; <label>:205                                     ; preds = %202
  %206 = getelementptr inbounds %struct.vec* %var_vec, i32 0, i32 1
  %207 = load i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = getelementptr inbounds %struct.vec* %var_vec, i32 0, i32 0
  %210 = load i8** %209, align 8
  %211 = call i8* (%struct.cgi_env_block*, i8*, ...)* @addenv(%struct.cgi_env_block* %blk, i8* getelementptr inbounds ([5 x i8]* @.str175, i32 0, i32 0), i32 %208, i8* %210)
  br label %202

; <label>:212                                     ; preds = %202
  %213 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 4
  %214 = load i32* %213, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 4
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 3
  %218 = getelementptr inbounds [64 x i8*]* %217, i32 0, i64 %216
  store i8* null, i8** %218, align 8
  %219 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 2
  %220 = load i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 1
  %224 = getelementptr inbounds [4096 x i8]* %223, i32 0, i64 %222
  store i8 0, i8* %224, align 1
  %225 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 4
  %226 = load i32* %225, align 4
  %227 = icmp slt i32 %226, 64
  br i1 %227, label %228, label %229

; <label>:228                                     ; preds = %212
  br label %231

; <label>:229                                     ; preds = %212
  call void @__assert_fail(i8* getelementptr inbounds ([62 x i8]* @.str176, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 3388, i8* getelementptr inbounds ([91 x i8]* @__PRETTY_FUNCTION__.prepare_cgi_environment, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %231

; <label>:231                                     ; preds = %230, %228
  %232 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 2
  %233 = load i32* %232, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %236

; <label>:235                                     ; preds = %231
  br label %238

; <label>:236                                     ; preds = %231
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str177, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 3389, i8* getelementptr inbounds ([91 x i8]* @__PRETTY_FUNCTION__.prepare_cgi_environment, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %238

; <label>:238                                     ; preds = %237, %235
  %239 = getelementptr inbounds %struct.cgi_env_block* %blk, i32 0, i32 2
  %240 = load i32* %239, align 4
  %241 = icmp slt i32 %240, 4096
  br i1 %241, label %242, label %243

; <label>:242                                     ; preds = %238
  br label %245

; <label>:243                                     ; preds = %238
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str178, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 3390, i8* getelementptr inbounds ([91 x i8]* @__PRETTY_FUNCTION__.prepare_cgi_environment, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %245

; <label>:245                                     ; preds = %244, %242
  ret void
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @spawn_process(%struct.mg_connection* %conn, i8* %prog, i8* %envblk, i8** %envp, i32 %fdin, i32 %fdout, i8* %dir) #0 {
  %1 = call i32 @fork() #1
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %8

; <label>:3                                       ; preds = %0
  %4 = load i8** @http_500_error, align 8
  %5 = call i32* @__errno_location() #2
  %6 = load i32* %5
  %7 = call i8* @strerror(i32 %6) #1
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 500, i8* %4, i8* getelementptr inbounds ([11 x i8]* @.str134, i32 0, i32 0), i8* %7)
  br label %56

; <label>:8                                       ; preds = %0
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %55

; <label>:10                                      ; preds = %8
  %11 = call i32 @chdir(i8* %dir) #1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %10
  %14 = call i32* @__errno_location() #2
  %15 = load i32* %14
  %16 = call i8* @strerror(i32 %15) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([18 x i8]* @.str135, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @__func__.spawn_process, i32 0, i32 0), i8* %dir, i8* %16)
  br label %54

; <label>:17                                      ; preds = %10
  %18 = call i32 @dup2(i32 %fdin, i32 0) #1
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %24

; <label>:20                                      ; preds = %17
  %21 = call i32* @__errno_location() #2
  %22 = load i32* %21
  %23 = call i8* @strerror(i32 %22) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([20 x i8]* @.str136, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @__func__.spawn_process, i32 0, i32 0), i32 %fdin, i8* %23)
  br label %53

; <label>:24                                      ; preds = %17
  %25 = call i32 @dup2(i32 %fdout, i32 1) #1
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %24
  %28 = call i32* @__errno_location() #2
  %29 = load i32* %28
  %30 = call i8* @strerror(i32 %29) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([20 x i8]* @.str137, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @__func__.spawn_process, i32 0, i32 0), i32 %fdout, i8* %30)
  br label %52

; <label>:31                                      ; preds = %24
  %32 = call i32 @close(i32 %fdin)
  %33 = call i32 @close(i32 %fdout)
  %34 = call void (i32)* (i32, void (i32)*)* @__sysv_signal(i32 17, void (i32)* null) #1
  %35 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %36 = load %struct.mg_context** %35, align 8
  %37 = getelementptr inbounds %struct.mg_context* %36, i32 0, i32 2
  %38 = getelementptr inbounds [24 x i8*]* %37, i32 0, i64 3
  %39 = load i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %46

; <label>:41                                      ; preds = %31
  %42 = call i32 (i8*, i8*, ...)* @execle(i8* %prog, i8* %prog, i8* null, i8** %envp) #1
  %43 = call i32* @__errno_location() #2
  %44 = load i32* %43
  %45 = call i8* @strerror(i32 %44) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([19 x i8]* @.str138, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @__func__.spawn_process, i32 0, i32 0), i8* %prog, i8* %45)
  br label %51

; <label>:46                                      ; preds = %31
  %47 = call i32 (i8*, i8*, ...)* @execle(i8* %39, i8* %39, i8* %prog, i8* null, i8** %envp) #1
  %48 = call i32* @__errno_location() #2
  %49 = load i32* %48
  %50 = call i8* @strerror(i32 %49) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([22 x i8]* @.str139, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @__func__.spawn_process, i32 0, i32 0), i8* %39, i8* %prog, i8* %50)
  br label %51

; <label>:51                                      ; preds = %46, %41
  br label %52

; <label>:52                                      ; preds = %51, %27
  br label %53

; <label>:53                                      ; preds = %52, %20
  br label %54

; <label>:54                                      ; preds = %53, %13
  call void @exit(i32 1) #4
  unreachable

; <label>:55                                      ; preds = %8
  br label %56

; <label>:56                                      ; preds = %55, %3
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal void @set_close_on_exec(i32 %fd) #0 {
  %1 = call i32 (i32, i32, ...)* @fcntl(i32 %fd, i32 2, i32 1)
  ret void
}

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #1

; Function Attrs: nounwind
declare void @setbuf(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @forward_body_data(%struct.mg_connection* %conn, %struct._IO_FILE* %fp, i32 %sock, %struct.ssl_st* %ssl) #0 {
  %buf = alloca [8192 x i8], align 16
  %1 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([7 x i8]* @.str126, i32 0, i32 0))
  %2 = icmp ne %struct._IO_FILE* %fp, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %6

; <label>:4                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str127, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 3170, i8* getelementptr inbounds ([69 x i8]* @__PRETTY_FUNCTION__.forward_body_data, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %6

; <label>:6                                       ; preds = %5, %3
  %7 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %8 = load i64* %7, align 8
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 411, i8* getelementptr inbounds ([16 x i8]* @.str128, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %123

; <label>:11                                      ; preds = %6
  %12 = icmp ne i8* %1, null
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %11
  %14 = call i32 @mg_strcasecmp(i8* %1, i8* getelementptr inbounds ([13 x i8]* @.str129, i32 0, i32 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %13
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 417, i8* getelementptr inbounds ([19 x i8]* @.str130, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %122

; <label>:17                                      ; preds = %13, %11
  %18 = icmp ne i8* %1, null
  br i1 %18, label %19, label %21

; <label>:19                                      ; preds = %17
  %20 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8]* @.str131, i32 0, i32 0))
  br label %21

; <label>:21                                      ; preds = %19, %17
  %22 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 9
  %23 = load i8** %22, align 8
  %24 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  %25 = load i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8* %23, i64 %26
  %28 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %29 = load i64* %28, align 8
  %30 = getelementptr inbounds i8* %27, i64 %29
  %31 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 14
  %32 = load i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 9
  %35 = load i8** %34, align 8
  %36 = getelementptr inbounds i8* %35, i64 %33
  %37 = ptrtoint i8* %36 to i64
  %38 = ptrtoint i8* %30 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %21
  br label %45

; <label>:43                                      ; preds = %21
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str132, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 3183, i8* getelementptr inbounds ([69 x i8]* @__PRETTY_FUNCTION__.forward_body_data, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %45

; <label>:45                                      ; preds = %44, %42
  %46 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %47 = load i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %45
  br label %52

; <label>:50                                      ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8]* @.str133, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 3184, i8* getelementptr inbounds ([69 x i8]* @__PRETTY_FUNCTION__.forward_body_data, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %52

; <label>:52                                      ; preds = %51, %49
  %53 = icmp sgt i32 %40, 0
  br i1 %53, label %54, label %70

; <label>:54                                      ; preds = %52
  %55 = sext i32 %40 to i64
  %56 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %57 = load i64* %56, align 8
  %58 = icmp sgt i64 %55, %57
  br i1 %58, label %59, label %63

; <label>:59                                      ; preds = %54
  %60 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %61 = load i64* %60, align 8
  %62 = trunc i64 %61 to i32
  br label %63

; <label>:63                                      ; preds = %59, %54
  %buffered_len.0 = phi i32 [ %62, %59 ], [ %40, %54 ]
  %64 = sext i32 %buffered_len.0 to i64
  %65 = call i64 @push(%struct._IO_FILE* %fp, i32 %sock, %struct.ssl_st* %ssl, i8* %30, i64 %64)
  %66 = sext i32 %buffered_len.0 to i64
  %67 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %68 = load i64* %67, align 8
  %69 = add nsw i64 %68, %66
  store i64 %69, i64* %67, align 8
  br label %70

; <label>:70                                      ; preds = %63, %52
  br label %71

; <label>:71                                      ; preds = %103, %70
  %nread.0 = phi i32 [ 0, %70 ], [ %94, %103 ]
  %72 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %73 = load i64* %72, align 8
  %74 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %75 = load i64* %74, align 8
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %77, label %108

; <label>:77                                      ; preds = %71
  %78 = sext i32 8192 to i64
  %79 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %80 = load i64* %79, align 8
  %81 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %82 = load i64* %81, align 8
  %83 = sub nsw i64 %80, %82
  %84 = icmp sgt i64 %78, %83
  br i1 %84, label %85, label %92

; <label>:85                                      ; preds = %77
  %86 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %87 = load i64* %86, align 8
  %88 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %89 = load i64* %88, align 8
  %90 = sub nsw i64 %87, %89
  %91 = trunc i64 %90 to i32
  br label %92

; <label>:92                                      ; preds = %85, %77
  %to_read.0 = phi i32 [ %91, %85 ], [ 8192, %77 ]
  %93 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %94 = call i32 @pull(%struct._IO_FILE* null, %struct.mg_connection* %conn, i8* %93, i32 %to_read.0)
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %102, label %96

; <label>:96                                      ; preds = %92
  %97 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %98 = sext i32 %94 to i64
  %99 = call i64 @push(%struct._IO_FILE* %fp, i32 %sock, %struct.ssl_st* %ssl, i8* %97, i64 %98)
  %100 = sext i32 %94 to i64
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

; <label>:102                                     ; preds = %96, %92
  br label %108

; <label>:103                                     ; preds = %96
  %104 = sext i32 %94 to i64
  %105 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %106 = load i64* %105, align 8
  %107 = add nsw i64 %106, %104
  store i64 %107, i64* %105, align 8
  br label %71

; <label>:108                                     ; preds = %102, %71
  %nread.1 = phi i32 [ %94, %102 ], [ %nread.0, %71 ]
  %109 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  %110 = load i64* %109, align 8
  %111 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 7
  %112 = load i64* %111, align 8
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %117

; <label>:114                                     ; preds = %108
  %115 = icmp sge i32 %nread.1, 0
  %116 = zext i1 %115 to i32
  br label %117

; <label>:117                                     ; preds = %114, %108
  %success.0 = phi i32 [ %116, %114 ], [ 0, %108 ]
  %118 = icmp ne i32 %success.0, 0
  br i1 %118, label %121, label %119

; <label>:119                                     ; preds = %117
  %120 = load i8** @http_500_error, align 8
  call void (%struct.mg_connection*, i32, i8*, i8*, ...)* @send_http_error(%struct.mg_connection* %conn, i32 577, i8* %120, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0))
  br label %121

; <label>:121                                     ; preds = %119, %117
  br label %122

; <label>:122                                     ; preds = %121, %16
  %success.1 = phi i32 [ 0, %16 ], [ %success.0, %121 ]
  br label %123

; <label>:123                                     ; preds = %122, %10
  %success.2 = phi i32 [ 0, %10 ], [ %success.1, %122 ]
  ret i32 %success.2
}

; Function Attrs: nounwind uwtable
define internal i32 @read_request(%struct._IO_FILE* %fp, %struct.mg_connection* %conn, i8* %buf, i32 %bufsiz, i32* %nread) #0 {
  %1 = load i32* %nread
  %2 = call i32 @get_request_len(i8* %buf, i32 %1)
  br label %3

; <label>:3                                       ; preds = %32, %0
  %request_len.0 = phi i32 [ %2, %0 ], [ %34, %32 ]
  %n.0 = phi i32 [ 0, %0 ], [ %n.1, %32 ]
  %4 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %5 = load %struct.mg_context** %4, align 8
  %6 = getelementptr inbounds %struct.mg_context* %5, i32 0, i32 0
  %7 = load volatile i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

; <label>:9                                       ; preds = %3
  %10 = load i32* %nread
  %11 = icmp slt i32 %10, %bufsiz
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %9
  %13 = icmp eq i32 %request_len.0, 0
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %12
  %15 = load i32* %nread
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8* %buf, i64 %16
  %18 = load i32* %nread
  %19 = sub nsw i32 %bufsiz, %18
  %20 = call i32 @pull(%struct._IO_FILE* %fp, %struct.mg_connection* %conn, i8* %17, i32 %19)
  %21 = icmp sgt i32 %20, 0
  br label %22

; <label>:22                                      ; preds = %14, %12, %9, %3
  %n.1 = phi i32 [ %20, %14 ], [ %n.0, %12 ], [ %n.0, %9 ], [ %n.0, %3 ]
  %23 = phi i1 [ false, %12 ], [ false, %9 ], [ false, %3 ], [ %21, %14 ]
  br i1 %23, label %24, label %35

; <label>:24                                      ; preds = %22
  %25 = load i32* %nread
  %26 = add nsw i32 %25, %n.1
  store i32 %26, i32* %nread
  %27 = load i32* %nread
  %28 = icmp sle i32 %27, %bufsiz
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %24
  br label %32

; <label>:30                                      ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str125, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 3098, i8* getelementptr inbounds ([69 x i8]* @__PRETTY_FUNCTION__.read_request, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = load i32* %nread
  %34 = call i32 @get_request_len(i8* %buf, i32 %33)
  br label %3

; <label>:35                                      ; preds = %22
  %36 = icmp sle i32 %request_len.0, 0
  br i1 %36, label %37, label %40

; <label>:37                                      ; preds = %35
  %38 = icmp sle i32 %n.1, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %37
  br label %41

; <label>:40                                      ; preds = %37, %35
  br label %41

; <label>:41                                      ; preds = %40, %39
  %42 = phi i32 [ -1, %39 ], [ %request_len.0, %40 ]
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal void @parse_http_headers(i8** %buf, %struct.mg_request_info* %ri) #0 {
  br label %1

; <label>:1                                       ; preds = %27, %0
  %i.0 = phi i32 [ 0, %0 ], [ %28, %27 ]
  %2 = icmp slt i32 %i.0, 64
  br i1 %2, label %3, label %29

; <label>:3                                       ; preds = %1
  %4 = call i8* @skip_quoted(i8** %buf, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0), i8 signext 0)
  %5 = sext i32 %i.0 to i64
  %6 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 11
  %7 = getelementptr inbounds [64 x %struct.mg_header]* %6, i32 0, i64 %5
  %8 = getelementptr inbounds %struct.mg_header* %7, i32 0, i32 0
  store i8* %4, i8** %8, align 8
  %9 = call i8* @skip(i8** %buf, i8* getelementptr inbounds ([3 x i8]* @.str123, i32 0, i32 0))
  %10 = sext i32 %i.0 to i64
  %11 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 11
  %12 = getelementptr inbounds [64 x %struct.mg_header]* %11, i32 0, i64 %10
  %13 = getelementptr inbounds %struct.mg_header* %12, i32 0, i32 1
  store i8* %9, i8** %13, align 8
  %14 = sext i32 %i.0 to i64
  %15 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 11
  %16 = getelementptr inbounds [64 x %struct.mg_header]* %15, i32 0, i64 %14
  %17 = getelementptr inbounds %struct.mg_header* %16, i32 0, i32 0
  %18 = load i8** %17, align 8
  %19 = getelementptr inbounds i8* %18, i64 0
  %20 = load i8* %19
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %3
  br label %29

; <label>:24                                      ; preds = %3
  %25 = add nsw i32 %i.0, 1
  %26 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 10
  store i32 %25, i32* %26, align 4
  br label %27

; <label>:27                                      ; preds = %24
  %28 = add nsw i32 %i.0, 1
  br label %1

; <label>:29                                      ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @skip_quoted(i8** %buf, i8* %delimiters, i8* %whitespace, i8 signext %quotechar) #0 {
  %1 = load i8** %buf
  %2 = call i64 @strcspn(i8* %1, i8* %delimiters) #3
  %3 = getelementptr inbounds i8* %1, i64 %2
  %4 = icmp ugt i8* %3, %1
  br i1 %4, label %5, label %33

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds i8* %3, i64 -1
  br label %7

; <label>:7                                       ; preds = %24, %5
  %p.0 = phi i8* [ %6, %5 ], [ %21, %24 ]
  %end_word.0 = phi i8* [ %3, %5 ], [ %23, %24 ]
  %8 = load i8* %p.0
  %9 = sext i8 %8 to i32
  %10 = sext i8 %quotechar to i32
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %25

; <label>:12                                      ; preds = %7
  %13 = load i8* %end_word.0
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %12
  store i8 0, i8* %p.0
  br label %25

; <label>:17                                      ; preds = %12
  %18 = getelementptr inbounds i8* %end_word.0, i64 1
  %19 = call i64 @strcspn(i8* %18, i8* %delimiters) #3
  %20 = add i64 %19, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %p.0, i8* %end_word.0, i64 %20, i32 1, i1 false)
  %21 = getelementptr inbounds i8* %p.0, i64 %19
  %22 = add i64 %19, 1
  %23 = getelementptr inbounds i8* %end_word.0, i64 %22
  br label %24

; <label>:24                                      ; preds = %17
  br label %7

; <label>:25                                      ; preds = %16, %7
  %26 = getelementptr inbounds i8* %p.0, i32 1
  br label %27

; <label>:27                                      ; preds = %30, %25
  %p.1 = phi i8* [ %26, %25 ], [ %31, %30 ]
  %28 = icmp ult i8* %p.1, %end_word.0
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %27
  store i8 0, i8* %p.1
  br label %30

; <label>:30                                      ; preds = %29
  %31 = getelementptr inbounds i8* %p.1, i32 1
  br label %27

; <label>:32                                      ; preds = %27
  br label %33

; <label>:33                                      ; preds = %32, %0
  %end_word.1 = phi i8* [ %end_word.0, %32 ], [ %3, %0 ]
  %34 = load i8* %end_word.1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %33
  store i8* %end_word.1, i8** %buf
  br label %49

; <label>:38                                      ; preds = %33
  %39 = getelementptr inbounds i8* %end_word.1, i64 1
  %40 = getelementptr inbounds i8* %end_word.1, i64 1
  %41 = call i64 @strspn(i8* %40, i8* %whitespace) #3
  %42 = getelementptr inbounds i8* %39, i64 %41
  br label %43

; <label>:43                                      ; preds = %46, %38
  %p.2 = phi i8* [ %end_word.1, %38 ], [ %47, %46 ]
  %44 = icmp ult i8* %p.2, %42
  br i1 %44, label %45, label %48

; <label>:45                                      ; preds = %43
  store i8 0, i8* %p.2
  br label %46

; <label>:46                                      ; preds = %45
  %47 = getelementptr inbounds i8* %p.2, i32 1
  br label %43

; <label>:48                                      ; preds = %43
  store i8* %42, i8** %buf
  br label %49

; <label>:49                                      ; preds = %48, %37
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define internal i8* @skip(i8** %buf, i8* %delimiters) #0 {
  %1 = call i8* @skip_quoted(i8** %buf, i8* %delimiters, i8* %delimiters, i8 signext 0)
  ret i8* %1
}

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pull(%struct._IO_FILE* %fp, %struct.mg_connection* %conn, i8* %buf, i32 %len) #0 {
  %1 = icmp ne %struct._IO_FILE* %fp, null
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = call i32 @fileno(%struct._IO_FILE* %fp) #1
  %4 = sext i32 %len to i64
  %5 = call i64 @read(i32 %3, i8* %buf, i64 %4)
  %6 = trunc i64 %5 to i32
  br label %25

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %9 = load %struct.ssl_st** %8, align 8
  %10 = icmp ne %struct.ssl_st* %9, null
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %7
  %12 = load void ()** getelementptr inbounds ([22 x %struct.ssl_func]* @ssl_sw, i32 0, i64 3, i32 1), align 8
  %13 = bitcast void ()* %12 to i32 (%struct.ssl_st*, i8*, i32)*
  %14 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 2
  %15 = load %struct.ssl_st** %14, align 8
  %16 = call i32 %13(%struct.ssl_st* %15, i8* %buf, i32 %len)
  br label %24

; <label>:17                                      ; preds = %7
  %18 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %19 = getelementptr inbounds %struct.socket* %18, i32 0, i32 0
  %20 = load i32* %19, align 4
  %21 = sext i32 %len to i64
  %22 = call i64 @recv(i32 %20, i8* %buf, i64 %21, i32 0)
  %23 = trunc i64 %22 to i32
  br label %24

; <label>:24                                      ; preds = %17, %11
  %nread.0 = phi i32 [ %16, %11 ], [ %23, %17 ]
  br label %25

; <label>:25                                      ; preds = %24, %2
  %nread.1 = phi i32 [ %6, %2 ], [ %nread.0, %24 ]
  %26 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %27 = load %struct.mg_context** %26, align 8
  %28 = getelementptr inbounds %struct.mg_context* %27, i32 0, i32 0
  %29 = load volatile i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %25
  br label %33

; <label>:32                                      ; preds = %25
  br label %33

; <label>:33                                      ; preds = %32, %31
  %34 = phi i32 [ -1, %31 ], [ %nread.1, %32 ]
  ret i32 %34
}

declare i64 @read(i32, i8*, i64)

declare i64 @recv(i32, i8*, i64, i32)

; Function Attrs: nounwind
declare i32 @fork() #1

; Function Attrs: nounwind
declare i32 @chdir(i8*) #1

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #1

; Function Attrs: nounwind
declare i32 @execle(i8*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define internal i8* @addenv(%struct.cgi_env_block* %block, i8* %fmt, ...) #0 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds %struct.cgi_env_block* %block, i32 0, i32 2
  %2 = load i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = sub i64 4096, %3
  %5 = sub i64 %4, 2
  %6 = trunc i64 %5 to i32
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str179, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i32 3250, i8* getelementptr inbounds ([56 x i8]* @__PRETTY_FUNCTION__.addenv, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %11

; <label>:11                                      ; preds = %10, %8
  %12 = getelementptr inbounds %struct.cgi_env_block* %block, i32 0, i32 1
  %13 = getelementptr inbounds [4096 x i8]* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.cgi_env_block* %block, i32 0, i32 2
  %15 = load i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8* %13, i64 %16
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_start(i8* %19)
  %20 = getelementptr inbounds %struct.cgi_env_block* %block, i32 0, i32 0
  %21 = load %struct.mg_connection** %20, align 8
  %22 = sext i32 %6 to i64
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %24 = call i32 @mg_vsnprintf(%struct.mg_connection* %21, i8* %17, i64 %22, i8* %fmt, %struct.__va_list_tag* %23)
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %26 = bitcast %struct.__va_list_tag* %25 to i8*
  call void @llvm.va_end(i8* %26)
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %28, label %46

; <label>:28                                      ; preds = %11
  %29 = add nsw i32 %24, 1
  %30 = icmp slt i32 %29, %6
  br i1 %30, label %31, label %46

; <label>:31                                      ; preds = %28
  %32 = getelementptr inbounds %struct.cgi_env_block* %block, i32 0, i32 4
  %33 = load i32* %32, align 4
  %34 = icmp slt i32 %33, 62
  br i1 %34, label %35, label %46

; <label>:35                                      ; preds = %31
  %36 = getelementptr inbounds %struct.cgi_env_block* %block, i32 0, i32 4
  %37 = load i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds %struct.cgi_env_block* %block, i32 0, i32 3
  %41 = getelementptr inbounds [64 x i8*]* %40, i32 0, i64 %39
  store i8* %17, i8** %41, align 8
  %42 = add nsw i32 %24, 1
  %43 = getelementptr inbounds %struct.cgi_env_block* %block, i32 0, i32 2
  %44 = load i32* %43, align 4
  %45 = add nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %49

; <label>:46                                      ; preds = %31, %28, %11
  %47 = getelementptr inbounds %struct.cgi_env_block* %block, i32 0, i32 0
  %48 = load %struct.mg_connection** %47, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %48, i8* getelementptr inbounds ([38 x i8]* @.str180, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @__func__.addenv, i32 0, i32 0), i8* %fmt)
  br label %49

; <label>:49                                      ; preds = %46, %35
  ret i8* %17
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind
declare i32 @toupper(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @lowercase(i8* %s) #0 {
  %1 = load i8* %s
  %2 = zext i8 %1 to i32
  %3 = call i32 @tolower(i32 %2) #1
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @scan_directory(%struct.mg_connection* %conn, i8* %dir, i8* %data, void (%struct.de*, i8*)* %cb) #0 {
  %path = alloca [4096 x i8], align 16
  %de = alloca %struct.de, align 8
  %1 = call %struct.__dirstream* @opendir(i8* %dir)
  %2 = icmp eq %struct.__dirstream* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %41

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  store %struct.mg_connection* %conn, %struct.mg_connection** %5, align 8
  br label %6

; <label>:6                                       ; preds = %25, %24, %4
  %7 = call %struct.dirent* @readdir(%struct.__dirstream* %1)
  %8 = icmp ne %struct.dirent* %7, null
  br i1 %8, label %9, label %38

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds %struct.dirent* %7, i32 0, i32 4
  %11 = getelementptr inbounds [256 x i8]* %10, i32 0, i32 0
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8]* @.str199, i32 0, i32 0)) #3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds %struct.dirent* %7, i32 0, i32 4
  %16 = getelementptr inbounds [256 x i8]* %15, i32 0, i32 0
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8]* @.str187, i32 0, i32 0)) #3
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19                                      ; preds = %14
  %20 = getelementptr inbounds %struct.dirent* %7, i32 0, i32 4
  %21 = getelementptr inbounds [256 x i8]* %20, i32 0, i32 0
  %22 = call i32 @must_hide_file(%struct.mg_connection* %conn, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %19, %14, %9
  br label %6

; <label>:25                                      ; preds = %19
  %26 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %27 = getelementptr inbounds %struct.dirent* %7, i32 0, i32 4
  %28 = getelementptr inbounds [256 x i8]* %27, i32 0, i32 0
  %29 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %26, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str107, i32 0, i32 0), i8* %dir, i32 47, i8* %28)
  %30 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %31 = bitcast %struct.file* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 48, i32 1, i1 false)
  %32 = getelementptr inbounds [4096 x i8]* %path, i32 0, i32 0
  %33 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %34 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %32, %struct.file* %33)
  %35 = getelementptr inbounds %struct.dirent* %7, i32 0, i32 4
  %36 = getelementptr inbounds [256 x i8]* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.de* %de, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  call void %cb(%struct.de* %de, i8* %data)
  br label %6

; <label>:38                                      ; preds = %6
  %39 = call i32 @closedir(%struct.__dirstream* %1)
  br label %40

; <label>:40                                      ; preds = %38
  br label %41

; <label>:41                                      ; preds = %40, %3
  %.0 = phi i32 [ 0, %3 ], [ 1, %40 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @dir_scan_callback(%struct.de* %de, i8* %data) #0 {
  %1 = bitcast i8* %data to %struct.dir_scan_data*
  %2 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 0
  %3 = load %struct.de** %2, align 8
  %4 = icmp eq %struct.de* %3, null
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 1
  %7 = load i32* %6, align 4
  %8 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 2
  %9 = load i32* %8, align 4
  %10 = icmp sge i32 %7, %9
  br i1 %10, label %11, label %25

; <label>:11                                      ; preds = %5, %0
  %12 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 2
  %13 = load i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 0
  %16 = load %struct.de** %15, align 8
  %17 = bitcast %struct.de* %16 to i8*
  %18 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 2
  %19 = load i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 64
  %22 = call i8* @realloc2(i8* %17, i64 %21)
  %23 = bitcast i8* %22 to %struct.de*
  %24 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 0
  store %struct.de* %23, %struct.de** %24, align 8
  br label %25

; <label>:25                                      ; preds = %11, %5
  %26 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 0
  %27 = load %struct.de** %26, align 8
  %28 = icmp eq %struct.de* %27, null
  br i1 %28, label %29, label %31

; <label>:29                                      ; preds = %25
  %30 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %64

; <label>:31                                      ; preds = %25
  %32 = getelementptr inbounds %struct.de* %de, i32 0, i32 1
  %33 = load i8** %32, align 8
  %34 = call i8* @mg_strdup(i8* %33)
  %35 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 1
  %36 = load i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 0
  %39 = load %struct.de** %38, align 8
  %40 = getelementptr inbounds %struct.de* %39, i64 %37
  %41 = getelementptr inbounds %struct.de* %40, i32 0, i32 1
  store i8* %34, i8** %41, align 8
  %42 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 1
  %43 = load i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 0
  %46 = load %struct.de** %45, align 8
  %47 = getelementptr inbounds %struct.de* %46, i64 %44
  %48 = getelementptr inbounds %struct.de* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %50 = bitcast %struct.file* %48 to i8*
  %51 = bitcast %struct.file* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 48, i32 8, i1 false)
  %52 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  %53 = load %struct.mg_connection** %52, align 8
  %54 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 1
  %55 = load i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 0
  %58 = load %struct.de** %57, align 8
  %59 = getelementptr inbounds %struct.de* %58, i64 %56
  %60 = getelementptr inbounds %struct.de* %59, i32 0, i32 0
  store %struct.mg_connection* %53, %struct.mg_connection** %60, align 8
  %61 = getelementptr inbounds %struct.dir_scan_data* %1, i32 0, i32 1
  %62 = load i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

; <label>:64                                      ; preds = %31, %29
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*)

; Function Attrs: nounwind uwtable
define internal i32 @compare_dir_entries(i8* %p1, i8* %p2) #0 {
  %1 = bitcast i8* %p1 to %struct.de*
  %2 = bitcast i8* %p2 to %struct.de*
  %3 = getelementptr inbounds %struct.de* %1, i32 0, i32 0
  %4 = load %struct.mg_connection** %3, align 8
  %5 = getelementptr inbounds %struct.mg_connection* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.mg_request_info* %5, i32 0, i32 3
  %7 = load i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %9, %0
  %query_string.0 = phi i8* [ getelementptr inbounds ([3 x i8]* @.str198, i32 0, i32 0), %9 ], [ %7, %0 ]
  %11 = getelementptr inbounds %struct.de* %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.file* %11, i32 0, i32 0
  %13 = load i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %struct.de* %2, i32 0, i32 2
  %17 = getelementptr inbounds %struct.file* %16, i32 0, i32 0
  %18 = load i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

; <label>:20                                      ; preds = %15
  br label %104

; <label>:21                                      ; preds = %15, %10
  %22 = getelementptr inbounds %struct.de* %1, i32 0, i32 2
  %23 = getelementptr inbounds %struct.file* %22, i32 0, i32 0
  %24 = load i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

; <label>:26                                      ; preds = %21
  %27 = getelementptr inbounds %struct.de* %2, i32 0, i32 2
  %28 = getelementptr inbounds %struct.file* %27, i32 0, i32 0
  %29 = load i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %26
  br label %104

; <label>:32                                      ; preds = %26, %21
  %33 = load i8* %query_string.0
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 110
  br i1 %35, label %36, label %42

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds %struct.de* %1, i32 0, i32 1
  %38 = load i8** %37, align 8
  %39 = getelementptr inbounds %struct.de* %2, i32 0, i32 1
  %40 = load i8** %39, align 8
  %41 = call i32 @strcmp(i8* %38, i8* %40) #3
  br label %92

; <label>:42                                      ; preds = %32
  %43 = load i8* %query_string.0
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 115
  br i1 %45, label %46, label %66

; <label>:46                                      ; preds = %42
  %47 = getelementptr inbounds %struct.de* %1, i32 0, i32 2
  %48 = getelementptr inbounds %struct.file* %47, i32 0, i32 2
  %49 = load i64* %48, align 8
  %50 = getelementptr inbounds %struct.de* %2, i32 0, i32 2
  %51 = getelementptr inbounds %struct.file* %50, i32 0, i32 2
  %52 = load i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %46
  br label %64

; <label>:55                                      ; preds = %46
  %56 = getelementptr inbounds %struct.de* %1, i32 0, i32 2
  %57 = getelementptr inbounds %struct.file* %56, i32 0, i32 2
  %58 = load i64* %57, align 8
  %59 = getelementptr inbounds %struct.de* %2, i32 0, i32 2
  %60 = getelementptr inbounds %struct.file* %59, i32 0, i32 2
  %61 = load i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  %63 = select i1 %62, i32 1, i32 -1
  br label %64

; <label>:64                                      ; preds = %55, %54
  %65 = phi i32 [ 0, %54 ], [ %63, %55 ]
  br label %91

; <label>:66                                      ; preds = %42
  %67 = load i8* %query_string.0
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 100
  br i1 %69, label %70, label %90

; <label>:70                                      ; preds = %66
  %71 = getelementptr inbounds %struct.de* %1, i32 0, i32 2
  %72 = getelementptr inbounds %struct.file* %71, i32 0, i32 1
  %73 = load i64* %72, align 8
  %74 = getelementptr inbounds %struct.de* %2, i32 0, i32 2
  %75 = getelementptr inbounds %struct.file* %74, i32 0, i32 1
  %76 = load i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %70
  br label %88

; <label>:79                                      ; preds = %70
  %80 = getelementptr inbounds %struct.de* %1, i32 0, i32 2
  %81 = getelementptr inbounds %struct.file* %80, i32 0, i32 1
  %82 = load i64* %81, align 8
  %83 = getelementptr inbounds %struct.de* %2, i32 0, i32 2
  %84 = getelementptr inbounds %struct.file* %83, i32 0, i32 1
  %85 = load i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  %87 = select i1 %86, i32 1, i32 -1
  br label %88

; <label>:88                                      ; preds = %79, %78
  %89 = phi i32 [ 0, %78 ], [ %87, %79 ]
  br label %90

; <label>:90                                      ; preds = %88, %66
  %cmp_result.0 = phi i32 [ %89, %88 ], [ 0, %66 ]
  br label %91

; <label>:91                                      ; preds = %90, %64
  %cmp_result.1 = phi i32 [ %65, %64 ], [ %cmp_result.0, %90 ]
  br label %92

; <label>:92                                      ; preds = %91, %36
  %cmp_result.2 = phi i32 [ %41, %36 ], [ %cmp_result.1, %91 ]
  br label %93

; <label>:93                                      ; preds = %92
  br label %94

; <label>:94                                      ; preds = %93
  %95 = getelementptr inbounds i8* %query_string.0, i64 1
  %96 = load i8* %95
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 100
  br i1 %98, label %99, label %101

; <label>:99                                      ; preds = %94
  %100 = sub nsw i32 0, %cmp_result.2
  br label %102

; <label>:101                                     ; preds = %94
  br label %102

; <label>:102                                     ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ %cmp_result.2, %101 ]
  br label %104

; <label>:104                                     ; preds = %102, %31, %20
  %.0 = phi i32 [ %103, %102 ], [ 1, %31 ], [ -1, %20 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @print_dir_entry(%struct.de* %de) #0 {
  %size = alloca [64 x i8], align 16
  %mod = alloca [64 x i8], align 16
  %href = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %2 = getelementptr inbounds %struct.file* %1, i32 0, i32 0
  %3 = load i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  %7 = load %struct.mg_connection** %6, align 8
  %8 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %9 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %7, i8* %8, i64 64, i8* getelementptr inbounds ([3 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str191, i32 0, i32 0))
  br label %67

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %12 = getelementptr inbounds %struct.file* %11, i32 0, i32 2
  %13 = load i64* %12, align 8
  %14 = icmp slt i64 %13, 1024
  br i1 %14, label %15, label %24

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  %17 = load %struct.mg_connection** %16, align 8
  %18 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %19 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %20 = getelementptr inbounds %struct.file* %19, i32 0, i32 2
  %21 = load i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %17, i8* %18, i64 64, i8* getelementptr inbounds ([3 x i8]* @.str192, i32 0, i32 0), i32 %22)
  br label %66

; <label>:24                                      ; preds = %10
  %25 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %26 = getelementptr inbounds %struct.file* %25, i32 0, i32 2
  %27 = load i64* %26, align 8
  %28 = icmp slt i64 %27, 1048576
  br i1 %28, label %29, label %39

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  %31 = load %struct.mg_connection** %30, align 8
  %32 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %33 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %34 = getelementptr inbounds %struct.file* %33, i32 0, i32 2
  %35 = load i64* %34, align 8
  %36 = sitofp i64 %35 to double
  %37 = fdiv double %36, 1.024000e+03
  %38 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %31, i8* %32, i64 64, i8* getelementptr inbounds ([6 x i8]* @.str193, i32 0, i32 0), double %37)
  br label %65

; <label>:39                                      ; preds = %24
  %40 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %41 = getelementptr inbounds %struct.file* %40, i32 0, i32 2
  %42 = load i64* %41, align 8
  %43 = icmp slt i64 %42, 1073741824
  br i1 %43, label %44, label %54

; <label>:44                                      ; preds = %39
  %45 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  %46 = load %struct.mg_connection** %45, align 8
  %47 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %48 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %49 = getelementptr inbounds %struct.file* %48, i32 0, i32 2
  %50 = load i64* %49, align 8
  %51 = sitofp i64 %50 to double
  %52 = fdiv double %51, 1.048576e+06
  %53 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %46, i8* %47, i64 64, i8* getelementptr inbounds ([6 x i8]* @.str194, i32 0, i32 0), double %52)
  br label %64

; <label>:54                                      ; preds = %39
  %55 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  %56 = load %struct.mg_connection** %55, align 8
  %57 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %58 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %59 = getelementptr inbounds %struct.file* %58, i32 0, i32 2
  %60 = load i64* %59, align 8
  %61 = sitofp i64 %60 to double
  %62 = fdiv double %61, 0x41D0000000000000
  %63 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %56, i8* %57, i64 64, i8* getelementptr inbounds ([6 x i8]* @.str195, i32 0, i32 0), double %62)
  br label %64

; <label>:64                                      ; preds = %54, %44
  br label %65

; <label>:65                                      ; preds = %64, %29
  br label %66

; <label>:66                                      ; preds = %65, %15
  br label %67

; <label>:67                                      ; preds = %66, %5
  %68 = getelementptr inbounds [64 x i8]* %mod, i32 0, i32 0
  %69 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %70 = getelementptr inbounds %struct.file* %69, i32 0, i32 1
  %71 = call %struct.tm* @localtime(i64* %70) #1
  %72 = call i64 @strftime(i8* %68, i64 64, i8* getelementptr inbounds ([15 x i8]* @.str196, i32 0, i32 0), %struct.tm* %71) #1
  %73 = getelementptr inbounds %struct.de* %de, i32 0, i32 1
  %74 = load i8** %73, align 8
  %75 = getelementptr inbounds [4096 x i8]* %href, i32 0, i32 0
  call void @mg_url_encode(i8* %74, i8* %75, i64 4096)
  %76 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  %77 = load %struct.mg_connection** %76, align 8
  %78 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  %79 = load %struct.mg_connection** %78, align 8
  %80 = getelementptr inbounds %struct.mg_connection* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.mg_request_info* %80, i32 0, i32 1
  %82 = load i8** %81, align 8
  %83 = getelementptr inbounds [4096 x i8]* %href, i32 0, i32 0
  %84 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %85 = getelementptr inbounds %struct.file* %84, i32 0, i32 0
  %86 = load i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = select i1 %87, i8* getelementptr inbounds ([2 x i8]* @.str181, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  %89 = getelementptr inbounds %struct.de* %de, i32 0, i32 1
  %90 = load i8** %89, align 8
  %91 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  %92 = getelementptr inbounds %struct.file* %91, i32 0, i32 0
  %93 = load i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %94, i8* getelementptr inbounds ([2 x i8]* @.str181, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  %96 = getelementptr inbounds [64 x i8]* %mod, i32 0, i32 0
  %97 = getelementptr inbounds [64 x i8]* %size, i32 0, i32 0
  %98 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_chunked_printf(%struct.mg_connection* %77, i8* getelementptr inbounds ([85 x i8]* @.str197, i32 0, i32 0), i8* %82, i8* %83, i8* %88, i8* %90, i8* %95, i8* %96, i8* %97)
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.de* %de, i32 0, i32 0
  %101 = load %struct.mg_connection** %100, align 8
  %102 = getelementptr inbounds %struct.mg_connection* %101, i32 0, i32 6
  %103 = load i64* %102, align 8
  %104 = add nsw i64 %103, %99
  store i64 %104, i64* %102, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @realloc2(i8* %ptr, i64 %size) #0 {
  %1 = call i8* @realloc(i8* %ptr, i64 %size) #1
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @free(i8* %ptr) #1
  br label %4

; <label>:4                                       ; preds = %3, %0
  ret i8* %1
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare %struct.__dirstream* @opendir(i8*)

declare %struct.dirent* @readdir(%struct.__dirstream*)

declare i32 @closedir(%struct.__dirstream*)

; Function Attrs: nounwind uwtable
define internal void @print_props(%struct.mg_connection* %conn, i8* %uri, %struct.file* %filep) #0 {
  %mtime = alloca [64 x i8], align 16
  %1 = getelementptr inbounds [64 x i8]* %mtime, i32 0, i32 0
  %2 = getelementptr inbounds %struct.file* %filep, i32 0, i32 1
  call void @gmt_time_string(i8* %1, i64 64, i64* %2)
  %3 = getelementptr inbounds %struct.file* %filep, i32 0, i32 0
  %4 = load i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %5, i8* getelementptr inbounds ([16 x i8]* @.str208, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)
  %7 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %8 = load i64* %7, align 8
  %9 = getelementptr inbounds [64 x i8]* %mtime, i32 0, i32 0
  %10 = call i32 (%struct.mg_connection*, i8*, ...)* @mg_printf(%struct.mg_connection* %conn, i8* getelementptr inbounds ([244 x i8]* @.str207, i32 0, i32 0), i8* %uri, i8* %6, i64 %8, i8* %9)
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  %13 = load i64* %12, align 8
  %14 = add nsw i64 %13, %11
  store i64 %14, i64* %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_dav_dir_entry(%struct.de* %de, i8* %data) #0 {
  %href = alloca [4096 x i8], align 16
  %href_encoded = alloca [4096 x i8], align 16
  %1 = bitcast i8* %data to %struct.mg_connection*
  %2 = getelementptr inbounds [4096 x i8]* %href, i32 0, i32 0
  %3 = getelementptr inbounds %struct.mg_connection* %1, i32 0, i32 0
  %4 = getelementptr inbounds %struct.mg_request_info* %3, i32 0, i32 1
  %5 = load i8** %4, align 8
  %6 = getelementptr inbounds %struct.de* %de, i32 0, i32 1
  %7 = load i8** %6, align 8
  %8 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %1, i8* %2, i64 4096, i8* getelementptr inbounds ([5 x i8]* @.str206, i32 0, i32 0), i8* %5, i8* %7)
  %9 = getelementptr inbounds [4096 x i8]* %href, i32 0, i32 0
  %10 = getelementptr inbounds [4096 x i8]* %href_encoded, i32 0, i32 0
  call void @mg_url_encode(i8* %9, i8* %10, i64 4095)
  %11 = getelementptr inbounds [4096 x i8]* %href_encoded, i32 0, i32 0
  %12 = getelementptr inbounds %struct.de* %de, i32 0, i32 2
  call void @print_props(%struct.mg_connection* %1, i8* %11, %struct.file* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gmt_time_string(i8* %buf, i64 %buf_len, i64* %t) #0 {
  %1 = call %struct.tm* @gmtime(i64* %t) #1
  %2 = call i64 @strftime(i8* %buf, i64 %buf_len, i8* getelementptr inbounds ([26 x i8]* @.str209, i32 0, i32 0), %struct.tm* %1) #1
  ret void
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i64*) #1

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #1

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @put_dir(%struct.mg_connection* %conn, i8* %path) #0 {
  %buf = alloca [4096 x i8], align 16
  %file = alloca %struct.file, align 8
  %1 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 48, i32 8, i1 false)
  %2 = bitcast i8* %1 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %3 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %2, i32 0, i32 6
  %4 = getelementptr inbounds i8* %path, i64 2
  br label %5

; <label>:5                                       ; preds = %35, %0
  %s.0 = phi i8* [ %4, %0 ], [ %36, %35 ]
  %res.0 = phi i32 [ 1, %0 ], [ %res.1, %35 ]
  %6 = call i8* @strchr(i8* %s.0, i32 47) #3
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %37

; <label>:8                                       ; preds = %5
  %9 = ptrtoint i8* %6 to i64
  %10 = ptrtoint i8* %path to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = icmp sge i32 %12, 4096
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %8
  br label %37

; <label>:15                                      ; preds = %8
  %16 = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 0
  %17 = sext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %path, i64 %17, i32 1, i1 false)
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds [4096 x i8]* %buf, i32 0, i64 %18
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 0
  %21 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %20, %struct.file* %file)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

; <label>:23                                      ; preds = %15
  %24 = getelementptr inbounds [4096 x i8]* %buf, i32 0, i32 0
  %25 = call i32 @mkdir(i8* %24, i32 493) #1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %23
  br label %37

; <label>:28                                      ; preds = %23, %15
  %29 = getelementptr inbounds i8* %6, i64 1
  %30 = load i8* %29
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %28
  br label %34

; <label>:34                                      ; preds = %33, %28
  %res.1 = phi i32 [ 0, %33 ], [ %res.0, %28 ]
  br label %35

; <label>:35                                      ; preds = %34
  %36 = getelementptr inbounds i8* %6, i32 1
  br label %5

; <label>:37                                      ; preds = %27, %14, %5
  %res.2 = phi i32 [ -1, %14 ], [ -1, %27 ], [ %res.0, %5 ]
  ret i32 %res.2
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_range_header(i8* %header, i64* %a, i64* %b) #0 {
  %1 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %header, i8* getelementptr inbounds ([14 x i8]* @.str223, i32 0, i32 0), i64* %a, i64* %b) #1
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @authorize(%struct.mg_connection* %conn, %struct.file* %filep) #0 {
  %ah = alloca %struct.ah, align 8
  %line = alloca [256 x i8], align 16
  %f_user = alloca [256 x i8], align 16
  %ha1 = alloca [256 x i8], align 16
  %f_domain = alloca [256 x i8], align 16
  %buf = alloca [8192 x i8], align 16
  %p = alloca i8*, align 8
  %1 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %2 = call i32 @parse_auth_header(%struct.mg_connection* %conn, i8* %1, i64 8192, %struct.ah* %ah)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  br label %55

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  %7 = load i8** %6, align 8
  store i8* %7, i8** %p, align 8
  br label %8

; <label>:8                                       ; preds = %53, %19, %5
  %9 = getelementptr inbounds [256 x i8]* %line, i32 0, i32 0
  %10 = call i8* @mg_fgets(i8* %9, i64 256, %struct.file* %filep, i8** %p)
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %54

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds [256 x i8]* %line, i32 0, i32 0
  %14 = getelementptr inbounds [256 x i8]* %f_user, i32 0, i32 0
  %15 = getelementptr inbounds [256 x i8]* %f_domain, i32 0, i32 0
  %16 = getelementptr inbounds [256 x i8]* %ha1, i32 0, i32 0
  %17 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([15 x i8]* @.str224, i32 0, i32 0), i8* %14, i8* %15, i8* %16) #1
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %12
  br label %8

; <label>:20                                      ; preds = %12
  %21 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 0
  %22 = load i8** %21, align 8
  %23 = getelementptr inbounds [256 x i8]* %f_user, i32 0, i32 0
  %24 = call i32 @strcmp(i8* %22, i8* %23) #3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %53, label %26

; <label>:26                                      ; preds = %20
  %27 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %28 = load %struct.mg_context** %27, align 8
  %29 = getelementptr inbounds %struct.mg_context* %28, i32 0, i32 2
  %30 = getelementptr inbounds [24 x i8*]* %29, i32 0, i64 5
  %31 = load i8** %30, align 8
  %32 = getelementptr inbounds [256 x i8]* %f_domain, i32 0, i32 0
  %33 = call i32 @strcmp(i8* %31, i8* %32) #3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

; <label>:35                                      ; preds = %26
  %36 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %37 = getelementptr inbounds %struct.mg_request_info* %36, i32 0, i32 0
  %38 = load i8** %37, align 8
  %39 = getelementptr inbounds [256 x i8]* %ha1, i32 0, i32 0
  %40 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 1
  %41 = load i8** %40, align 8
  %42 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 6
  %43 = load i8** %42, align 8
  %44 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 5
  %45 = load i8** %44, align 8
  %46 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 2
  %47 = load i8** %46, align 8
  %48 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 4
  %49 = load i8** %48, align 8
  %50 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 3
  %51 = load i8** %50, align 8
  %52 = call i32 @check_password(i8* %38, i8* %39, i8* %41, i8* %43, i8* %45, i8* %47, i8* %49, i8* %51)
  br label %55

; <label>:53                                      ; preds = %26, %20
  br label %8

; <label>:54                                      ; preds = %8
  br label %55

; <label>:55                                      ; preds = %54, %35, %4
  %.0 = phi i32 [ %52, %35 ], [ 0, %54 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_auth_header(%struct.mg_connection* %conn, i8* %buf, i64 %buf_size, %struct.ah* %ah) #0 {
  %s = alloca i8*, align 8
  %1 = bitcast %struct.ah* %ah to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 56, i32 1, i1 false)
  %2 = call i8* @mg_get_header(%struct.mg_connection* %conn, i8* getelementptr inbounds ([14 x i8]* @.str225, i32 0, i32 0))
  %3 = icmp eq i8* %2, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = call i32 @mg_strncasecmp(i8* %2, i8* getelementptr inbounds ([8 x i8]* @.str226, i32 0, i32 0), i64 7)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %4, %0
  br label %107

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds i8* %2, i64 7
  call void @mg_strlcpy(i8* %buf, i8* %9, i64 %buf_size)
  store i8* %buf, i8** %s, align 8
  br label %10

; <label>:10                                      ; preds = %94, %8
  br label %11

; <label>:11                                      ; preds = %23, %10
  %12 = load i8** %s, align 8
  %13 = load i8* %12
  %14 = zext i8 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = call i16** @__ctype_b_loc() #2
  %17 = load i16** %16
  %18 = getelementptr inbounds i16* %17, i64 %15
  %19 = load i16* %18
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 8192
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %11
  %24 = load i8** %s, align 8
  %25 = getelementptr inbounds i8* %24, i32 1
  store i8* %25, i8** %s, align 8
  br label %11

; <label>:26                                      ; preds = %11
  %27 = call i8* @skip_quoted(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str227, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0), i8 signext 0)
  %28 = load i8** %s, align 8
  %29 = getelementptr inbounds i8* %28, i64 0
  %30 = load i8* %29
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 34
  br i1 %32, label %33, label %46

; <label>:33                                      ; preds = %26
  %34 = load i8** %s, align 8
  %35 = getelementptr inbounds i8* %34, i32 1
  store i8* %35, i8** %s, align 8
  %36 = call i8* @skip_quoted(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str228, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0), i8 signext 92)
  %37 = load i8** %s, align 8
  %38 = getelementptr inbounds i8* %37, i64 0
  %39 = load i8* %38
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 44
  br i1 %41, label %42, label %45

; <label>:42                                      ; preds = %33
  %43 = load i8** %s, align 8
  %44 = getelementptr inbounds i8* %43, i32 1
  store i8* %44, i8** %s, align 8
  br label %45

; <label>:45                                      ; preds = %42, %33
  br label %48

; <label>:46                                      ; preds = %26
  %47 = call i8* @skip_quoted(i8** %s, i8* getelementptr inbounds ([3 x i8]* @.str229, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0), i8 signext 0)
  br label %48

; <label>:48                                      ; preds = %46, %45
  %value.0 = phi i8* [ %36, %45 ], [ %47, %46 ]
  %49 = load i8* %27
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %48
  br label %95

; <label>:53                                      ; preds = %48
  %54 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8]* @.str230, i32 0, i32 0)) #3
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

; <label>:56                                      ; preds = %53
  %57 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 0
  store i8* %value.0, i8** %57, align 8
  br label %94

; <label>:58                                      ; preds = %53
  %59 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8]* @.str231, i32 0, i32 0)) #3
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

; <label>:61                                      ; preds = %58
  %62 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 2
  store i8* %value.0, i8** %62, align 8
  br label %93

; <label>:63                                      ; preds = %58
  %64 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8]* @.str232, i32 0, i32 0)) #3
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

; <label>:66                                      ; preds = %63
  %67 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 3
  store i8* %value.0, i8** %67, align 8
  br label %92

; <label>:68                                      ; preds = %63
  %69 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8]* @.str233, i32 0, i32 0)) #3
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

; <label>:71                                      ; preds = %68
  %72 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 1
  store i8* %value.0, i8** %72, align 8
  br label %91

; <label>:73                                      ; preds = %68
  %74 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8]* @.str234, i32 0, i32 0)) #3
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

; <label>:76                                      ; preds = %73
  %77 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 4
  store i8* %value.0, i8** %77, align 8
  br label %90

; <label>:78                                      ; preds = %73
  %79 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([3 x i8]* @.str235, i32 0, i32 0)) #3
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

; <label>:81                                      ; preds = %78
  %82 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 5
  store i8* %value.0, i8** %82, align 8
  br label %89

; <label>:83                                      ; preds = %78
  %84 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([6 x i8]* @.str236, i32 0, i32 0)) #3
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

; <label>:86                                      ; preds = %83
  %87 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 6
  store i8* %value.0, i8** %87, align 8
  br label %88

; <label>:88                                      ; preds = %86, %83
  br label %89

; <label>:89                                      ; preds = %88, %81
  br label %90

; <label>:90                                      ; preds = %89, %76
  br label %91

; <label>:91                                      ; preds = %90, %71
  br label %92

; <label>:92                                      ; preds = %91, %66
  br label %93

; <label>:93                                      ; preds = %92, %61
  br label %94

; <label>:94                                      ; preds = %93, %56
  br label %10

; <label>:95                                      ; preds = %52
  %96 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 0
  %97 = load i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %105

; <label>:99                                      ; preds = %95
  %100 = getelementptr inbounds %struct.ah* %ah, i32 0, i32 0
  %101 = load i8** %100, align 8
  %102 = call i8* @mg_strdup(i8* %101)
  %103 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 0
  %104 = getelementptr inbounds %struct.mg_request_info* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  br label %106

; <label>:105                                     ; preds = %95
  br label %107

; <label>:106                                     ; preds = %99
  br label %107

; <label>:107                                     ; preds = %106, %105, %7
  %.0 = phi i32 [ 0, %7 ], [ 1, %106 ], [ 0, %105 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i8* @mg_fgets(i8* %buf, i64 %size, %struct.file* %filep, i8** %p) #0 {
  %1 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  %2 = load i8** %1, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %48

; <label>:4                                       ; preds = %0
  %5 = load i8** %p
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %48

; <label>:7                                       ; preds = %4
  %8 = getelementptr inbounds %struct.file* %filep, i32 0, i32 2
  %9 = load i64* %8, align 8
  %10 = getelementptr inbounds %struct.file* %filep, i32 0, i32 4
  %11 = load i8** %10, align 8
  %12 = getelementptr inbounds i8* %11, i64 %9
  %13 = load i8** %p
  %14 = load i8** %p
  %15 = ptrtoint i8* %12 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = call i8* @memchr(i8* %13, i32 10, i64 %17) #3
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

; <label>:20                                      ; preds = %7
  %21 = getelementptr inbounds i8* %18, i64 1
  br label %23

; <label>:22                                      ; preds = %7
  br label %23

; <label>:23                                      ; preds = %22, %20
  %eof.0 = phi i8* [ %21, %20 ], [ %12, %22 ]
  %24 = load i8** %p
  %25 = ptrtoint i8* %eof.0 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sub i64 %size, 1
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %23
  %31 = sub i64 %size, 1
  br label %37

; <label>:32                                      ; preds = %23
  %33 = load i8** %p
  %34 = ptrtoint i8* %eof.0 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  br label %37

; <label>:37                                      ; preds = %32, %30
  %38 = phi i64 [ %31, %30 ], [ %36, %32 ]
  %39 = load i8** %p
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* %39, i64 %38, i32 1, i1 false)
  %40 = getelementptr inbounds i8* %buf, i64 %38
  store i8 0, i8* %40
  %41 = load i8** %p
  %42 = getelementptr inbounds i8* %41, i64 %38
  store i8* %42, i8** %p
  %43 = icmp ne i64 %38, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %37
  br label %46

; <label>:45                                      ; preds = %37
  br label %46

; <label>:46                                      ; preds = %45, %44
  %47 = phi i8* [ %eof.0, %44 ], [ null, %45 ]
  br label %58

; <label>:48                                      ; preds = %4, %0
  %49 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %50 = load %struct._IO_FILE** %49, align 8
  %51 = icmp ne %struct._IO_FILE* %50, null
  br i1 %51, label %52, label %57

; <label>:52                                      ; preds = %48
  %53 = trunc i64 %size to i32
  %54 = getelementptr inbounds %struct.file* %filep, i32 0, i32 3
  %55 = load %struct._IO_FILE** %54, align 8
  %56 = call i8* @fgets(i8* %buf, i32 %53, %struct._IO_FILE* %55)
  br label %58

; <label>:57                                      ; preds = %48
  br label %58

; <label>:58                                      ; preds = %57, %52, %46
  %.0 = phi i8* [ %47, %46 ], [ %56, %52 ], [ null, %57 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @check_password(i8* %method, i8* %ha1, i8* %uri, i8* %nonce, i8* %nc, i8* %cnonce, i8* %qop, i8* %response) #0 {
  %ha2 = alloca [33 x i8], align 16
  %expected_response = alloca [33 x i8], align 16
  %1 = icmp eq i8* %method, null
  br i1 %1, label %12, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp eq i8* %nonce, null
  br i1 %3, label %12, label %4

; <label>:4                                       ; preds = %2
  %5 = icmp eq i8* %nc, null
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %4
  %7 = icmp eq i8* %cnonce, null
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %6
  %9 = icmp eq i8* %qop, null
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %8
  %11 = icmp eq i8* %response, null
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %10, %8, %6, %4, %2, %0
  br label %27

; <label>:13                                      ; preds = %10
  %14 = call i64 @strlen(i8* %response) #3
  %15 = icmp ne i64 %14, 32
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %13
  br label %27

; <label>:17                                      ; preds = %13
  %18 = getelementptr inbounds [33 x i8]* %ha2, i32 0, i32 0
  %19 = call i8* (i8*, ...)* @mg_md5(i8* %18, i8* %method, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %uri, i8* null)
  %20 = getelementptr inbounds [33 x i8]* %expected_response, i32 0, i32 0
  %21 = getelementptr inbounds [33 x i8]* %ha2, i32 0, i32 0
  %22 = call i8* (i8*, ...)* @mg_md5(i8* %20, i8* %ha1, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %nonce, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %nc, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %cnonce, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %qop, i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), i8* %21, i8* null)
  %23 = getelementptr inbounds [33 x i8]* %expected_response, i32 0, i32 0
  %24 = call i32 @mg_strcasecmp(i8* %response, i8* %23)
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  br label %27

; <label>:27                                      ; preds = %17, %16, %12
  %.0 = phi i32 [ 0, %12 ], [ 0, %16 ], [ %26, %17 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @open_auth_file(%struct.mg_connection* %conn, i8* %path, %struct.file* %filep) #0 {
  %name = alloca [4096 x i8], align 16
  %file = alloca %struct.file, align 8
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 1
  %2 = load %struct.mg_context** %1, align 8
  %3 = getelementptr inbounds %struct.mg_context* %2, i32 0, i32 2
  %4 = getelementptr inbounds [24 x i8*]* %3, i32 0, i64 11
  %5 = load i8** %4, align 8
  %6 = bitcast %struct.file* %file to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 48, i32 8, i1 false)
  %7 = bitcast i8* %6 to { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }*
  %8 = getelementptr { i32, i64, i64, %struct._IO_FILE*, i8*, i32, [4 x i8] }* %7, i32 0, i32 6
  %9 = icmp ne i8* %5, null
  br i1 %9, label %10, label %18

; <label>:10                                      ; preds = %0
  %11 = call i32 @mg_fopen(%struct.mg_connection* %conn, i8* %5, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.file* %filep)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

; <label>:13                                      ; preds = %10
  %14 = call i32* @__errno_location() #2
  %15 = load i32* %14
  %16 = call i8* @strerror(i32 %15) #1
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %conn, i8* getelementptr inbounds ([14 x i8]* @.str94, i32 0, i32 0), i8* %5, i8* %16)
  br label %17

; <label>:17                                      ; preds = %13, %10
  br label %55

; <label>:18                                      ; preds = %0
  %19 = call i32 @mg_stat(%struct.mg_connection* %conn, i8* %path, %struct.file* %file)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

; <label>:21                                      ; preds = %18
  %22 = getelementptr inbounds %struct.file* %file, i32 0, i32 0
  %23 = load i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds [4096 x i8]* %name, i32 0, i32 0
  %27 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %26, i64 4096, i8* getelementptr inbounds ([7 x i8]* @.str107, i32 0, i32 0), i8* %path, i32 47, i8* getelementptr inbounds ([10 x i8]* @.str240, i32 0, i32 0))
  %28 = getelementptr inbounds [4096 x i8]* %name, i32 0, i32 0
  %29 = call i32 @mg_fopen(%struct.mg_connection* %conn, i8* %28, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.file* %filep)
  br label %54

; <label>:30                                      ; preds = %21, %18
  %31 = call i64 @strlen(i8* %path) #3
  %32 = getelementptr inbounds i8* %path, i64 %31
  %33 = getelementptr inbounds i8* %32, i64 -1
  br label %34

; <label>:34                                      ; preds = %43, %30
  %e.0 = phi i8* [ %33, %30 ], [ %44, %43 ]
  %35 = icmp ugt i8* %e.0, %path
  br i1 %35, label %36, label %45

; <label>:36                                      ; preds = %34
  %37 = getelementptr inbounds i8* %e.0, i64 0
  %38 = load i8* %37
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %36
  br label %45

; <label>:42                                      ; preds = %36
  br label %43

; <label>:43                                      ; preds = %42
  %44 = getelementptr inbounds i8* %e.0, i32 -1
  br label %34

; <label>:45                                      ; preds = %41, %34
  %46 = getelementptr inbounds [4096 x i8]* %name, i32 0, i32 0
  %47 = ptrtoint i8* %e.0 to i64
  %48 = ptrtoint i8* %path to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 (%struct.mg_connection*, i8*, i64, i8*, ...)* @mg_snprintf(%struct.mg_connection* %conn, i8* %46, i64 4096, i8* getelementptr inbounds ([9 x i8]* @.str241, i32 0, i32 0), i32 %50, i8* %path, i32 47, i8* getelementptr inbounds ([10 x i8]* @.str240, i32 0, i32 0))
  %52 = getelementptr inbounds [4096 x i8]* %name, i32 0, i32 0
  %53 = call i32 @mg_fopen(%struct.mg_connection* %conn, i8* %52, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0), %struct.file* %filep)
  br label %54

; <label>:54                                      ; preds = %45, %25
  br label %55

; <label>:55                                      ; preds = %54, %17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_net(i8* %spec, i32* %net, i32* %mask) #0 {
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %slash = alloca i32, align 4
  store i32 32, i32* %slash, align 4
  %1 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %spec, i8* getelementptr inbounds ([17 x i8]* @.str246, i32 0, i32 0), i32* %a, i32* %b, i32* %c, i32* %d, i32* %slash, i32* %n) #1
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %spec, i8* getelementptr inbounds ([14 x i8]* @.str247, i32 0, i32 0), i32* %a, i32* %b, i32* %c, i32* %d, i32* %n) #1
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %49

; <label>:6                                       ; preds = %3, %0
  %7 = load i32* %a, align 4
  %8 = call i32 @isbyte(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %49

; <label>:10                                      ; preds = %6
  %11 = load i32* %b, align 4
  %12 = call i32 @isbyte(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %49

; <label>:14                                      ; preds = %10
  %15 = load i32* %c, align 4
  %16 = call i32 @isbyte(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

; <label>:18                                      ; preds = %14
  %19 = load i32* %d, align 4
  %20 = call i32 @isbyte(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

; <label>:22                                      ; preds = %18
  %23 = load i32* %slash, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %49

; <label>:25                                      ; preds = %22
  %26 = load i32* %slash, align 4
  %27 = icmp slt i32 %26, 33
  br i1 %27, label %28, label %49

; <label>:28                                      ; preds = %25
  %29 = load i32* %n, align 4
  %30 = load i32* %a, align 4
  %31 = shl i32 %30, 24
  %32 = load i32* %b, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %31, %33
  %35 = load i32* %c, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %34, %36
  %38 = load i32* %d, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %net
  %40 = load i32* %slash, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

; <label>:42                                      ; preds = %28
  %43 = load i32* %slash, align 4
  %44 = sub nsw i32 32, %43
  %45 = shl i32 -1, %44
  br label %47

; <label>:46                                      ; preds = %28
  br label %47

; <label>:47                                      ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 0, %46 ]
  store i32 %48, i32* %mask
  br label %49

; <label>:49                                      ; preds = %47, %25, %22, %18, %14, %10, %6, %3
  %len.0 = phi i32 [ %29, %47 ], [ 0, %25 ], [ 0, %22 ], [ 0, %18 ], [ 0, %14 ], [ 0, %10 ], [ 0, %6 ], [ 0, %3 ]
  ret i32 %len.0
}

; Function Attrs: nounwind uwtable
define internal i32 @isbyte(i32 %n) #0 {
  %1 = icmp sge i32 %n, 0
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = icmp sle i32 %n, 255
  br label %4

; <label>:4                                       ; preds = %2, %0
  %5 = phi i1 [ false, %0 ], [ %3, %2 ]
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*)

declare i32 @poll(%struct.pollfd*, i64, i32)

; Function Attrs: nounwind uwtable
define internal void @accept_new_connection(%struct.socket* %listener, %struct.mg_context* %ctx) #0 {
  %so = alloca %struct.socket, align 4
  %src_addr = alloca [50 x i8], align 16
  %len = alloca i32, align 4
  %on = alloca i32, align 4
  store i32 16, i32* %len, align 4
  store i32 1, i32* %on, align 4
  %1 = getelementptr inbounds %struct.socket* %listener, i32 0, i32 0
  %2 = load i32* %1, align 4
  %3 = getelementptr inbounds %struct.socket* %so, i32 0, i32 2
  %4 = bitcast %union.usa* %3 to %struct.sockaddr*
  %5 = call i32 @accept(i32 %2, %struct.sockaddr* %4, i32* %len)
  %6 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = icmp eq i32 %5, -1
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %74

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.socket* %so, i32 0, i32 2
  %11 = bitcast %union.usa* %10 to %struct.sockaddr_in*
  %12 = getelementptr inbounds %struct.sockaddr_in* %11, i32 0, i32 2
  %13 = bitcast %struct.in_addr* %12 to i32*
  %14 = load i32* %13
  %15 = call i32 @ntohl(i32 %14) #2
  %16 = call i32 @check_acl(%struct.mg_context* %ctx, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

; <label>:18                                      ; preds = %9
  %19 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  %20 = getelementptr inbounds %struct.socket* %so, i32 0, i32 2
  call void @sockaddr_to_string(i8* %19, i64 50, %union.usa* %20)
  %21 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %22 = getelementptr inbounds [50 x i8]* %src_addr, i32 0, i32 0
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %21, i8* getelementptr inbounds ([33 x i8]* @.str257, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @__func__.accept_new_connection, i32 0, i32 0), i8* %22)
  %23 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %24 = load i32* %23, align 4
  %25 = call i32 @close(i32 %24)
  br label %73

; <label>:26                                      ; preds = %9
  %27 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %28 = load i32* %27, align 4
  call void @set_close_on_exec(i32 %28)
  %29 = bitcast %struct.socket* %listener to i8*
  %30 = getelementptr i8* %29, i32 36
  %31 = bitcast i8* %30 to i32*
  %32 = load i32* %31, align 4
  %33 = and i32 %32, 1
  %34 = and i32 %33, 1
  %35 = bitcast %struct.socket* %so to i8*
  %36 = getelementptr i8* %35, i32 36
  %37 = bitcast i8* %36 to i32*
  %38 = and i32 %34, 1
  %39 = load i32* %37, align 4
  %40 = and i32 %39, -2
  %41 = or i32 %40, %38
  store i32 %41, i32* %37, align 4
  %42 = bitcast %struct.socket* %listener to i8*
  %43 = getelementptr i8* %42, i32 36
  %44 = bitcast i8* %43 to i32*
  %45 = load i32* %44, align 4
  %46 = lshr i32 %45, 1
  %47 = and i32 %46, 1
  %48 = and i32 %47, 1
  %49 = bitcast %struct.socket* %so to i8*
  %50 = getelementptr i8* %49, i32 36
  %51 = bitcast i8* %50 to i32*
  %52 = and i32 %48, 1
  %53 = shl i32 %52, 1
  %54 = load i32* %51, align 4
  %55 = and i32 %54, -3
  %56 = or i32 %55, %53
  store i32 %56, i32* %51, align 4
  %57 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %58 = load i32* %57, align 4
  %59 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %60 = bitcast %union.usa* %59 to %struct.sockaddr*
  %61 = call i32 @getsockname(i32 %58, %struct.sockaddr* %60, i32* %len) #1
  %62 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %63 = load i32* %62, align 4
  %64 = bitcast i32* %on to i8*
  %65 = call i32 @setsockopt(i32 %63, i32 1, i32 9, i8* %64, i32 4) #1
  %66 = getelementptr inbounds %struct.socket* %so, i32 0, i32 0
  %67 = load i32* %66, align 4
  %68 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %69 = getelementptr inbounds [24 x i8*]* %68, i32 0, i64 23
  %70 = load i8** %69, align 8
  %71 = call i32 @atoi(i8* %70) #3
  %72 = call i32 @set_sock_timeout(i32 %67, i32 %71)
  call void @produce_socket(%struct.mg_context* %ctx, %struct.socket* %so)
  br label %73

; <label>:73                                      ; preds = %26, %18
  br label %74

; <label>:74                                      ; preds = %73, %8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @close_all_listening_sockets(%struct.mg_context* %ctx) #0 {
  br label %1

; <label>:1                                       ; preds = %13, %0
  %i.0 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %2 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 6
  %3 = load i32* %2, align 4
  %4 = icmp slt i32 %i.0, %3
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %1
  %6 = sext i32 %i.0 to i64
  %7 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 5
  %8 = load %struct.socket** %7, align 8
  %9 = getelementptr inbounds %struct.socket* %8, i64 %6
  %10 = getelementptr inbounds %struct.socket* %9, i32 0, i32 0
  %11 = load i32* %10, align 4
  %12 = call i32 @close(i32 %11)
  br label %13

; <label>:13                                      ; preds = %5
  %14 = add nsw i32 %i.0, 1
  br label %1

; <label>:15                                      ; preds = %1
  %16 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 5
  %17 = load %struct.socket** %16, align 8
  %18 = bitcast %struct.socket* %17 to i8*
  call void @free(i8* %18) #1
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(%union.pthread_cond_t*) #1

; Function Attrs: nounwind uwtable
define internal void @uninitialize_ssl(%struct.mg_context* %ctx) #0 {
  %1 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 1
  %2 = load %struct.ssl_ctx_st** %1, align 8
  %3 = icmp ne %struct.ssl_ctx_st* %2, null
  br i1 %3, label %4, label %24

; <label>:4                                       ; preds = %0
  %5 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 1, i32 1), align 8
  %6 = bitcast void ()* %5 to void (void (i32, i32, i8*, i32)*)*
  call void %6(void (i32, i32, i8*, i32)* null)
  br label %7

; <label>:7                                       ; preds = %17, %4
  %i.0 = phi i32 [ 0, %4 ], [ %18, %17 ]
  %8 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 0, i32 1), align 8
  %9 = bitcast void ()* %8 to i32 ()*
  %10 = call i32 %9()
  %11 = icmp slt i32 %i.0, %10
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %7
  %13 = sext i32 %i.0 to i64
  %14 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %15 = getelementptr inbounds %union.pthread_mutex_t* %14, i64 %13
  %16 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %15) #1
  br label %17

; <label>:17                                      ; preds = %12
  %18 = add nsw i32 %i.0, 1
  br label %7

; <label>:19                                      ; preds = %7
  %20 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 1, i32 1), align 8
  %21 = bitcast void ()* %20 to void (void (i32, i32, i8*, i32)*)*
  call void %21(void (i32, i32, i8*, i32)* null)
  %22 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 2, i32 1), align 8
  %23 = bitcast void ()* %22 to void (i64 ()*)*
  call void %23(i64 ()* null)
  br label %24

; <label>:24                                      ; preds = %19, %0
  ret void
}

declare i32 @accept(i32, %struct.sockaddr*, i32*)

; Function Attrs: nounwind uwtable
define internal i32 @check_acl(%struct.mg_context* %ctx, i32 %remote_ip) #0 {
  %net = alloca i32, align 4
  %mask = alloca i32, align 4
  %vec = alloca %struct.vec, align 8
  %1 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 2
  %2 = getelementptr inbounds [24 x i8*]* %1, i32 0, i64 14
  %3 = load i8** %2, align 8
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i32 43, i32 45
  br label %6

; <label>:6                                       ; preds = %32, %0
  %allowed.0 = phi i32 [ %5, %0 ], [ %allowed.1, %32 ]
  %list.0 = phi i8* [ %3, %0 ], [ %7, %32 ]
  %7 = call i8* @next_option(i8* %list.0, %struct.vec* %vec, %struct.vec* null)
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %33

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %11 = load i8** %10, align 8
  %12 = getelementptr inbounds i8* %11, i64 0
  %13 = load i8* %12
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 43
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %9
  %17 = icmp ne i32 %14, 45
  br i1 %17, label %24, label %18

; <label>:18                                      ; preds = %16, %9
  %19 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %20 = load i8** %19, align 8
  %21 = getelementptr inbounds i8* %20, i64 1
  %22 = call i32 @parse_net(i8* %21, i32* %net, i32* %mask)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %18, %16
  %25 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %25, i8* getelementptr inbounds ([36 x i8]* @.str258, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @__func__.check_acl, i32 0, i32 0))
  br label %36

; <label>:26                                      ; preds = %18
  %27 = load i32* %net, align 4
  %28 = load i32* %mask, align 4
  %29 = and i32 %remote_ip, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %26
  br label %32

; <label>:32                                      ; preds = %31, %26
  %allowed.1 = phi i32 [ %14, %31 ], [ %allowed.0, %26 ]
  br label %6

; <label>:33                                      ; preds = %6
  %34 = icmp eq i32 %allowed.0, 43
  %35 = zext i1 %34 to i32
  br label %36

; <label>:36                                      ; preds = %33, %24
  %.0 = phi i32 [ -1, %24 ], [ %35, %33 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @set_sock_timeout(i32 %sock, i32 %milliseconds) #0 {
  %t = alloca %struct.timeval, align 8
  %1 = sdiv i32 %milliseconds, 1000
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 0
  store i64 %2, i64* %3, align 8
  %4 = mul nsw i32 %milliseconds, 1000
  %5 = srem i32 %4, 1000000
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 1
  store i64 %6, i64* %7, align 8
  %8 = bitcast %struct.timeval* %t to i8*
  %9 = call i32 @setsockopt(i32 %sock, i32 1, i32 20, i8* %8, i32 16) #1
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

; <label>:11                                      ; preds = %0
  %12 = bitcast %struct.timeval* %t to i8*
  %13 = call i32 @setsockopt(i32 %sock, i32 1, i32 21, i8* %12, i32 16) #1
  %14 = icmp ne i32 %13, 0
  br label %15

; <label>:15                                      ; preds = %11, %0
  %16 = phi i1 [ true, %0 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @produce_socket(%struct.mg_context* %ctx, %struct.socket* %sp) #0 {
  %1 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 8
  %2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %1) #1
  br label %3

; <label>:3                                       ; preds = %16, %0
  %4 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 0
  %5 = load volatile i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %3
  %8 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 11
  %9 = load volatile i32* %8, align 4
  %10 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 12
  %11 = load volatile i32* %10, align 4
  %12 = sub nsw i32 %9, %11
  %13 = icmp sge i32 %12, 20
  br label %14

; <label>:14                                      ; preds = %7, %3
  %15 = phi i1 [ false, %3 ], [ %13, %7 ]
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %14
  %17 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 14
  %18 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 8
  %19 = call i32 @pthread_cond_wait(%union.pthread_cond_t* %17, %union.pthread_mutex_t* %18)
  br label %3

; <label>:20                                      ; preds = %14
  %21 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 11
  %22 = load volatile i32* %21, align 4
  %23 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 12
  %24 = load volatile i32* %23, align 4
  %25 = sub nsw i32 %22, %24
  %26 = icmp slt i32 %25, 20
  br i1 %26, label %27, label %39

; <label>:27                                      ; preds = %20
  %28 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 11
  %29 = load volatile i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = urem i64 %30, 20
  %32 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 10
  %33 = getelementptr inbounds [20 x %struct.socket]* %32, i32 0, i64 %31
  %34 = bitcast %struct.socket* %33 to i8*
  %35 = bitcast %struct.socket* %sp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 40, i32 4, i1 false)
  %36 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 11
  %37 = load volatile i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store volatile i32 %38, i32* %36, align 4
  br label %39

; <label>:39                                      ; preds = %27, %20
  %40 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 13
  %41 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %40) #1
  %42 = getelementptr inbounds %struct.mg_context* %ctx, i32 0, i32 8
  %43 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %42) #1
  ret void
}

declare %struct.passwd* @getpwnam(i8*)

; Function Attrs: nounwind
declare i32 @setgid(i32) #1

; Function Attrs: nounwind
declare i32 @setuid(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_port_string(%struct.vec* %vec, %struct.socket* %so) #0 {
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %len = alloca i32, align 4
  %port = alloca i32, align 4
  %1 = bitcast %struct.socket* %so to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 40, i32 1, i1 false)
  %2 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %3 = bitcast %union.usa* %2 to %struct.sockaddr_in*
  %4 = getelementptr inbounds %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %4, align 2
  %5 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %6 = load i8** %5, align 8
  %7 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([17 x i8]* @.str266, i32 0, i32 0), i32* %a, i32* %b, i32* %c, i32* %d, i32* %port, i32* %len) #1
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %31

; <label>:9                                       ; preds = %0
  %10 = load i32* %a, align 4
  %11 = shl i32 %10, 24
  %12 = load i32* %b, align 4
  %13 = shl i32 %12, 16
  %14 = or i32 %11, %13
  %15 = load i32* %c, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %14, %16
  %18 = load i32* %d, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @htonl(i32 %19) #2
  %21 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %22 = bitcast %union.usa* %21 to %struct.sockaddr_in*
  %23 = getelementptr inbounds %struct.sockaddr_in* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.in_addr* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load i32* %port, align 4
  %26 = trunc i32 %25 to i16
  %27 = call zeroext i16 @htons(i16 zeroext %26) #2
  %28 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %29 = bitcast %union.usa* %28 to %struct.sockaddr_in*
  %30 = getelementptr inbounds %struct.sockaddr_in* %29, i32 0, i32 1
  store i16 %27, i16* %30, align 2
  br label %45

; <label>:31                                      ; preds = %0
  %32 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %33 = load i8** %32, align 8
  %34 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %33, i8* getelementptr inbounds ([5 x i8]* @.str267, i32 0, i32 0), i32* %port, i32* %len) #1
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %31
  %37 = load i32* %port, align 4
  %38 = trunc i32 %37 to i16
  %39 = call zeroext i16 @htons(i16 zeroext %38) #2
  %40 = getelementptr inbounds %struct.socket* %so, i32 0, i32 1
  %41 = bitcast %union.usa* %40 to %struct.sockaddr_in*
  %42 = getelementptr inbounds %struct.sockaddr_in* %41, i32 0, i32 1
  store i16 %39, i16* %42, align 2
  br label %44

; <label>:43                                      ; preds = %31
  store i32 0, i32* %len, align 4
  store i32 0, i32* %port, align 4
  br label %44

; <label>:44                                      ; preds = %43, %36
  br label %45

; <label>:45                                      ; preds = %44, %9
  %46 = load i32* %len, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.vec* %vec, i32 0, i32 0
  %49 = load i8** %48, align 8
  %50 = getelementptr inbounds i8* %49, i64 %47
  %51 = load i8* %50
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 115
  %54 = zext i1 %53 to i32
  %55 = and i32 %54, 1
  %56 = bitcast %struct.socket* %so to i8*
  %57 = getelementptr i8* %56, i32 36
  %58 = bitcast i8* %57 to i32*
  %59 = and i32 %55, 1
  %60 = load i32* %58, align 4
  %61 = and i32 %60, -2
  %62 = or i32 %61, %59
  store i32 %62, i32* %58, align 4
  %63 = icmp eq i32 %52, 114
  %64 = zext i1 %63 to i32
  %65 = and i32 %64, 1
  %66 = bitcast %struct.socket* %so to i8*
  %67 = getelementptr i8* %66, i32 36
  %68 = bitcast i8* %67 to i32*
  %69 = and i32 %65, 1
  %70 = shl i32 %69, 1
  %71 = load i32* %68, align 4
  %72 = and i32 %71, -3
  %73 = or i32 %72, %70
  store i32 %73, i32* %68, align 4
  %74 = load i32* %port, align 4
  %75 = call i32 @is_valid_port(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

; <label>:77                                      ; preds = %45
  %78 = icmp eq i32 %52, 0
  br i1 %78, label %85, label %79

; <label>:79                                      ; preds = %77
  %80 = icmp eq i32 %52, 115
  br i1 %80, label %85, label %81

; <label>:81                                      ; preds = %79
  %82 = icmp eq i32 %52, 114
  br i1 %82, label %85, label %83

; <label>:83                                      ; preds = %81
  %84 = icmp eq i32 %52, 44
  br label %85

; <label>:85                                      ; preds = %83, %81, %79, %77
  %86 = phi i1 [ true, %81 ], [ true, %79 ], [ true, %77 ], [ %84, %83 ]
  br label %87

; <label>:87                                      ; preds = %85, %45
  %88 = phi i1 [ false, %45 ], [ %86, %85 ]
  %89 = zext i1 %88 to i32
  ret i32 %89
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #2

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #2

; Function Attrs: nounwind uwtable
define internal i32 @is_valid_port(i32 %port) #0 {
  %1 = icmp ugt i32 %port, 0
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = icmp ult i32 %port, 65535
  br label %4

; <label>:4                                       ; preds = %2, %0
  %5 = phi i1 [ false, %0 ], [ %3, %2 ]
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @load_dll(%struct.mg_context* %ctx, i8* %dll_name, %struct.ssl_func* %sw) #0 {
  %u = alloca %union.anon, align 8
  %1 = call i8* @dlopen(i8* %dll_name, i32 1) #1
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %4, i8* getelementptr inbounds ([19 x i8]* @.str272, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @__func__.load_dll, i32 0, i32 0), i8* %dll_name)
  br label %30

; <label>:5                                       ; preds = %0
  br label %6

; <label>:6                                       ; preds = %27, %5
  %fp.0 = phi %struct.ssl_func* [ %sw, %5 ], [ %28, %27 ]
  %7 = getelementptr inbounds %struct.ssl_func* %fp.0, i32 0, i32 0
  %8 = load i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %29

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.ssl_func* %fp.0, i32 0, i32 0
  %12 = load i8** %11, align 8
  %13 = call i8* @dlsym(i8* %1, i8* %12) #1
  %14 = bitcast %union.anon* %u to i8**
  store i8* %13, i8** %14, align 8
  %15 = bitcast %union.anon* %u to void ()**
  %16 = load void ()** %15, align 8
  %17 = icmp eq void ()* %16, null
  br i1 %17, label %18, label %22

; <label>:18                                      ; preds = %10
  %19 = call %struct.mg_connection* @fc(%struct.mg_context* %ctx)
  %20 = getelementptr inbounds %struct.ssl_func* %fp.0, i32 0, i32 0
  %21 = load i8** %20, align 8
  call void (%struct.mg_connection*, i8*, ...)* @cry(%struct.mg_connection* %19, i8* getelementptr inbounds ([23 x i8]* @.str273, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @__func__.load_dll, i32 0, i32 0), i8* %dll_name, i8* %21)
  br label %30

; <label>:22                                      ; preds = %10
  %23 = bitcast %union.anon* %u to void ()**
  %24 = load void ()** %23, align 8
  %25 = getelementptr inbounds %struct.ssl_func* %fp.0, i32 0, i32 1
  store void ()* %24, void ()** %25, align 8
  br label %26

; <label>:26                                      ; preds = %22
  br label %27

; <label>:27                                      ; preds = %26
  %28 = getelementptr inbounds %struct.ssl_func* %fp.0, i32 1
  br label %6

; <label>:29                                      ; preds = %6
  br label %30

; <label>:30                                      ; preds = %29, %18, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %18 ], [ 1, %29 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i8* @ssl_error() #0 {
  %1 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 3, i32 1), align 8
  %2 = bitcast void ()* %1 to i64 ()*
  %3 = call i64 %2()
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %10

; <label>:6                                       ; preds = %0
  %7 = load void ()** getelementptr inbounds ([6 x %struct.ssl_func]* @crypto_sw, i32 0, i64 4, i32 1), align 8
  %8 = bitcast void ()* %7 to i8* (i64, i8*)*
  %9 = call i8* %8(i64 %3, i8* null)
  br label %10

; <label>:10                                      ; preds = %6, %5
  %11 = phi i8* [ getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), %5 ], [ %9, %6 ]
  ret i8* %11
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @ssl_locking_callback(i32 %mode, i32 %mutex_num, i8* %file, i32 %line) #0 {
  %1 = and i32 %mode, 1
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %8

; <label>:3                                       ; preds = %0
  %4 = sext i32 %mutex_num to i64
  %5 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %6 = getelementptr inbounds %union.pthread_mutex_t* %5, i64 %4
  %7 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %6) #1
  br label %13

; <label>:8                                       ; preds = %0
  %9 = sext i32 %mutex_num to i64
  %10 = load %union.pthread_mutex_t** @ssl_mutexes, align 8
  %11 = getelementptr inbounds %union.pthread_mutex_t* %10, i64 %9
  %12 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %11) #1
  br label %13

; <label>:13                                      ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @ssl_id_callback() #0 {
  %1 = call i64 @pthread_self() #2
  ret i64 %1
}

; Function Attrs: nounwind readnone
declare i64 @pthread_self() #2

; Function Attrs: nounwind
declare i8* @dlopen(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @dlsym(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @mg_strndup(i8* %ptr, i64 %len) #0 {
  %1 = add i64 %len, 1
  %2 = call noalias i8* @malloc(i64 %1) #1
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = add i64 %len, 1
  call void @mg_strlcpy(i8* %2, i8* %ptr, i64 %5)
  br label %6

; <label>:6                                       ; preds = %4, %0
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal void @reset_per_request_attributes(%struct.mg_connection* %conn) #0 {
  %1 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 10
  store i8* null, i8** %1, align 8
  %2 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 8
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 6
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 15
  store i32 -1, i32* %4, align 4
  %5 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 16
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 13
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 11
  store i32 0, i32* %7, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_http_message(i8* %buf, i32 %len, %struct.mg_request_info* %ri) #0 {
  %1 = alloca i8*, align 8
  store i8* %buf, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = call i32 @get_request_len(i8* %2, i32 %len)
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %69

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 2
  store i8* null, i8** %6, align 8
  %7 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 1
  store i8* null, i8** %7, align 8
  %8 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 0
  store i8* null, i8** %8, align 8
  %9 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 4
  store i8* null, i8** %9, align 8
  %10 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 10
  store i32 0, i32* %10, align 4
  %11 = sub nsw i32 %3, 1
  %12 = sext i32 %11 to i64
  %13 = load i8** %1, align 8
  %14 = getelementptr inbounds i8* %13, i64 %12
  store i8 0, i8* %14
  br label %15

; <label>:15                                      ; preds = %34, %5
  %16 = load i8** %1, align 8
  %17 = load i8* %16
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

; <label>:20                                      ; preds = %15
  %21 = load i8** %1, align 8
  %22 = load i8* %21
  %23 = zext i8 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = call i16** @__ctype_b_loc() #2
  %26 = load i16** %25
  %27 = getelementptr inbounds i16* %26, i64 %24
  %28 = load i16* %27
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 8192
  %31 = icmp ne i32 %30, 0
  br label %32

; <label>:32                                      ; preds = %20, %15
  %33 = phi i1 [ false, %15 ], [ %31, %20 ]
  br i1 %33, label %34, label %37

; <label>:34                                      ; preds = %32
  %35 = load i8** %1, align 8
  %36 = getelementptr inbounds i8* %35, i32 1
  store i8* %36, i8** %1, align 8
  br label %15

; <label>:37                                      ; preds = %32
  %38 = call i8* @skip(i8** %1, i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0))
  %39 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = call i8* @skip(i8** %1, i8* getelementptr inbounds ([2 x i8]* @.str124, i32 0, i32 0))
  %41 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = call i8* @skip(i8** %1, i8* getelementptr inbounds ([3 x i8]* @.str123, i32 0, i32 0))
  %43 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 0
  %45 = load i8** %44, align 8
  %46 = call i32 @is_valid_http_method(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

; <label>:48                                      ; preds = %37
  %49 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 2
  %50 = load i8** %49, align 8
  %51 = call i32 @memcmp(i8* %50, i8* getelementptr inbounds ([6 x i8]* @.str281, i32 0, i32 0), i64 5) #3
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

; <label>:53                                      ; preds = %48, %37
  %54 = icmp ne i32 %46, 0
  br i1 %54, label %61, label %55

; <label>:55                                      ; preds = %53
  %56 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 0
  %57 = load i8** %56, align 8
  %58 = call i32 @memcmp(i8* %57, i8* getelementptr inbounds ([6 x i8]* @.str281, i32 0, i32 0), i64 5) #3
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %55, %48
  br label %68

; <label>:61                                      ; preds = %55, %53
  %62 = icmp ne i32 %46, 0
  br i1 %62, label %63, label %67

; <label>:63                                      ; preds = %61
  %64 = getelementptr inbounds %struct.mg_request_info* %ri, i32 0, i32 2
  %65 = load i8** %64, align 8
  %66 = getelementptr inbounds i8* %65, i64 5
  store i8* %66, i8** %64, align 8
  br label %67

; <label>:67                                      ; preds = %63, %61
  call void @parse_http_headers(i8** %1, %struct.mg_request_info* %ri)
  br label %68

; <label>:68                                      ; preds = %67, %60
  %request_length.0 = phi i32 [ -1, %60 ], [ %3, %67 ]
  br label %69

; <label>:69                                      ; preds = %68, %0
  %request_length.1 = phi i32 [ %request_length.0, %68 ], [ %3, %0 ]
  ret i32 %request_length.1
}

; Function Attrs: nounwind
declare i64 @strtoll(i8*, i8**, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_valid_http_method(i8* %method) #0 {
  %1 = call i32 @strcmp(i8* %method, i8* getelementptr inbounds ([4 x i8]* @.str70, i32 0, i32 0)) #3
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %28

; <label>:3                                       ; preds = %0
  %4 = call i32 @strcmp(i8* %method, i8* getelementptr inbounds ([5 x i8]* @.str68, i32 0, i32 0)) #3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %28

; <label>:6                                       ; preds = %3
  %7 = call i32 @strcmp(i8* %method, i8* getelementptr inbounds ([5 x i8]* @.str69, i32 0, i32 0)) #3
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28

; <label>:9                                       ; preds = %6
  %10 = call i32 @strcmp(i8* %method, i8* getelementptr inbounds ([8 x i8]* @.str282, i32 0, i32 0)) #3
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

; <label>:12                                      ; preds = %9
  %13 = call i32 @strcmp(i8* %method, i8* getelementptr inbounds ([4 x i8]* @.str58, i32 0, i32 0)) #3
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

; <label>:15                                      ; preds = %12
  %16 = call i32 @strcmp(i8* %method, i8* getelementptr inbounds ([7 x i8]* @.str60, i32 0, i32 0)) #3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

; <label>:18                                      ; preds = %15
  %19 = call i32 @strcmp(i8* %method, i8* getelementptr inbounds ([8 x i8]* @.str57, i32 0, i32 0)) #3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

; <label>:21                                      ; preds = %18
  %22 = call i32 @strcmp(i8* %method, i8* getelementptr inbounds ([9 x i8]* @.str65, i32 0, i32 0)) #3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

; <label>:24                                      ; preds = %21
  %25 = call i32 @strcmp(i8* %method, i8* getelementptr inbounds ([6 x i8]* @.str59, i32 0, i32 0)) #3
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

; <label>:28                                      ; preds = %24, %21, %18, %15, %12, %9, %6, %3, %0
  %29 = phi i1 [ true, %21 ], [ true, %18 ], [ true, %15 ], [ true, %12 ], [ true, %9 ], [ true, %6 ], [ true, %3 ], [ true, %0 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare %struct.hostent* @gethostbyname(i8*)

declare i32 @connect(i32, %struct.sockaddr*, i32)

; Function Attrs: nounwind uwtable
define internal void @close_socket_gracefully(%struct.mg_connection* %conn) #0 {
  %linger = alloca %struct.linger, align 4
  %1 = getelementptr inbounds %struct.linger* %linger, i32 0, i32 0
  store i32 1, i32* %1, align 4
  %2 = getelementptr inbounds %struct.linger* %linger, i32 0, i32 1
  store i32 1, i32* %2, align 4
  %3 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %4 = getelementptr inbounds %struct.socket* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = bitcast %struct.linger* %linger to i8*
  %7 = call i32 @setsockopt(i32 %5, i32 1, i32 13, i8* %6, i32 8) #1
  %8 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %9 = getelementptr inbounds %struct.socket* %8, i32 0, i32 0
  %10 = load i32* %9, align 4
  %11 = call i32 @shutdown(i32 %10, i32 1) #1
  %12 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %13 = getelementptr inbounds %struct.socket* %12, i32 0, i32 0
  %14 = load i32* %13, align 4
  %15 = call i32 @set_non_blocking_mode(i32 %14)
  %16 = getelementptr inbounds %struct.mg_connection* %conn, i32 0, i32 4
  %17 = getelementptr inbounds %struct.socket* %16, i32 0, i32 0
  %18 = load i32* %17, align 4
  %19 = call i32 @close(i32 %18)
  ret void
}

; Function Attrs: nounwind
declare i32 @shutdown(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @set_non_blocking_mode(i32 %sock) #0 {
  %1 = call i32 (i32, i32, ...)* @fcntl(i32 %sock, i32 3, i32 0)
  %2 = or i32 %1, 2048
  %3 = call i32 (i32, i32, ...)* @fcntl(i32 %sock, i32 4, i32 %2)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i8* @suggest_connection_header(%struct.mg_connection* %conn) #0 {
  %1 = call i32 @should_keep_alive(%struct.mg_connection* %conn)
  %2 = icmp ne i32 %1, 0
  %3 = select i1 %2, i8* getelementptr inbounds ([11 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str311, i32 0, i32 0)
  ret i8* %3
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind uwtable
define internal void @byteReverse(i8* %buf, i32 %longs) #0 {
  %1 = call i32 @is_big_endian()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %29

; <label>:3                                       ; preds = %0
  br label %4

; <label>:4                                       ; preds = %25, %3
  %.01 = phi i32 [ %longs, %3 ], [ %26, %25 ]
  %.0 = phi i8* [ %buf, %3 ], [ %24, %25 ]
  %5 = getelementptr inbounds i8* %.0, i64 3
  %6 = load i8* %5
  %7 = zext i8 %6 to i32
  %8 = shl i32 %7, 8
  %9 = getelementptr inbounds i8* %.0, i64 2
  %10 = load i8* %9
  %11 = zext i8 %10 to i32
  %12 = or i32 %8, %11
  %13 = shl i32 %12, 16
  %14 = getelementptr inbounds i8* %.0, i64 1
  %15 = load i8* %14
  %16 = zext i8 %15 to i32
  %17 = shl i32 %16, 8
  %18 = getelementptr inbounds i8* %.0, i64 0
  %19 = load i8* %18
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = or i32 %13, %21
  %23 = bitcast i8* %.0 to i32*
  store i32 %22, i32* %23
  %24 = getelementptr inbounds i8* %.0, i64 4
  br label %25

; <label>:25                                      ; preds = %4
  %26 = add i32 %.01, -1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %4, label %28

; <label>:28                                      ; preds = %25
  br label %29

; <label>:29                                      ; preds = %28, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MD5Transform(i32* %buf, i32* %in) #0 {
  %1 = getelementptr inbounds i32* %buf, i64 0
  %2 = load i32* %1
  %3 = getelementptr inbounds i32* %buf, i64 1
  %4 = load i32* %3
  %5 = getelementptr inbounds i32* %buf, i64 2
  %6 = load i32* %5
  %7 = getelementptr inbounds i32* %buf, i64 3
  %8 = load i32* %7
  %9 = xor i32 %6, %8
  %10 = and i32 %4, %9
  %11 = xor i32 %8, %10
  %12 = getelementptr inbounds i32* %in, i64 0
  %13 = load i32* %12
  %14 = add i32 %11, %13
  %15 = add i32 %14, -680876936
  %16 = add i32 %2, %15
  %17 = shl i32 %16, 7
  %18 = lshr i32 %16, 25
  %19 = or i32 %17, %18
  %20 = add i32 %19, %4
  %21 = xor i32 %4, %6
  %22 = and i32 %20, %21
  %23 = xor i32 %6, %22
  %24 = getelementptr inbounds i32* %in, i64 1
  %25 = load i32* %24
  %26 = add i32 %23, %25
  %27 = add i32 %26, -389564586
  %28 = add i32 %8, %27
  %29 = shl i32 %28, 12
  %30 = lshr i32 %28, 20
  %31 = or i32 %29, %30
  %32 = add i32 %31, %20
  %33 = xor i32 %20, %4
  %34 = and i32 %32, %33
  %35 = xor i32 %4, %34
  %36 = getelementptr inbounds i32* %in, i64 2
  %37 = load i32* %36
  %38 = add i32 %35, %37
  %39 = add i32 %38, 606105819
  %40 = add i32 %6, %39
  %41 = shl i32 %40, 17
  %42 = lshr i32 %40, 15
  %43 = or i32 %41, %42
  %44 = add i32 %43, %32
  %45 = xor i32 %32, %20
  %46 = and i32 %44, %45
  %47 = xor i32 %20, %46
  %48 = getelementptr inbounds i32* %in, i64 3
  %49 = load i32* %48
  %50 = add i32 %47, %49
  %51 = add i32 %50, -1044525330
  %52 = add i32 %4, %51
  %53 = shl i32 %52, 22
  %54 = lshr i32 %52, 10
  %55 = or i32 %53, %54
  %56 = add i32 %55, %44
  %57 = xor i32 %44, %32
  %58 = and i32 %56, %57
  %59 = xor i32 %32, %58
  %60 = getelementptr inbounds i32* %in, i64 4
  %61 = load i32* %60
  %62 = add i32 %59, %61
  %63 = add i32 %62, -176418897
  %64 = add i32 %20, %63
  %65 = shl i32 %64, 7
  %66 = lshr i32 %64, 25
  %67 = or i32 %65, %66
  %68 = add i32 %67, %56
  %69 = xor i32 %56, %44
  %70 = and i32 %68, %69
  %71 = xor i32 %44, %70
  %72 = getelementptr inbounds i32* %in, i64 5
  %73 = load i32* %72
  %74 = add i32 %71, %73
  %75 = add i32 %74, 1200080426
  %76 = add i32 %32, %75
  %77 = shl i32 %76, 12
  %78 = lshr i32 %76, 20
  %79 = or i32 %77, %78
  %80 = add i32 %79, %68
  %81 = xor i32 %68, %56
  %82 = and i32 %80, %81
  %83 = xor i32 %56, %82
  %84 = getelementptr inbounds i32* %in, i64 6
  %85 = load i32* %84
  %86 = add i32 %83, %85
  %87 = add i32 %86, -1473231341
  %88 = add i32 %44, %87
  %89 = shl i32 %88, 17
  %90 = lshr i32 %88, 15
  %91 = or i32 %89, %90
  %92 = add i32 %91, %80
  %93 = xor i32 %80, %68
  %94 = and i32 %92, %93
  %95 = xor i32 %68, %94
  %96 = getelementptr inbounds i32* %in, i64 7
  %97 = load i32* %96
  %98 = add i32 %95, %97
  %99 = add i32 %98, -45705983
  %100 = add i32 %56, %99
  %101 = shl i32 %100, 22
  %102 = lshr i32 %100, 10
  %103 = or i32 %101, %102
  %104 = add i32 %103, %92
  %105 = xor i32 %92, %80
  %106 = and i32 %104, %105
  %107 = xor i32 %80, %106
  %108 = getelementptr inbounds i32* %in, i64 8
  %109 = load i32* %108
  %110 = add i32 %107, %109
  %111 = add i32 %110, 1770035416
  %112 = add i32 %68, %111
  %113 = shl i32 %112, 7
  %114 = lshr i32 %112, 25
  %115 = or i32 %113, %114
  %116 = add i32 %115, %104
  %117 = xor i32 %104, %92
  %118 = and i32 %116, %117
  %119 = xor i32 %92, %118
  %120 = getelementptr inbounds i32* %in, i64 9
  %121 = load i32* %120
  %122 = add i32 %119, %121
  %123 = add i32 %122, -1958414417
  %124 = add i32 %80, %123
  %125 = shl i32 %124, 12
  %126 = lshr i32 %124, 20
  %127 = or i32 %125, %126
  %128 = add i32 %127, %116
  %129 = xor i32 %116, %104
  %130 = and i32 %128, %129
  %131 = xor i32 %104, %130
  %132 = getelementptr inbounds i32* %in, i64 10
  %133 = load i32* %132
  %134 = add i32 %131, %133
  %135 = add i32 %134, -42063
  %136 = add i32 %92, %135
  %137 = shl i32 %136, 17
  %138 = lshr i32 %136, 15
  %139 = or i32 %137, %138
  %140 = add i32 %139, %128
  %141 = xor i32 %128, %116
  %142 = and i32 %140, %141
  %143 = xor i32 %116, %142
  %144 = getelementptr inbounds i32* %in, i64 11
  %145 = load i32* %144
  %146 = add i32 %143, %145
  %147 = add i32 %146, -1990404162
  %148 = add i32 %104, %147
  %149 = shl i32 %148, 22
  %150 = lshr i32 %148, 10
  %151 = or i32 %149, %150
  %152 = add i32 %151, %140
  %153 = xor i32 %140, %128
  %154 = and i32 %152, %153
  %155 = xor i32 %128, %154
  %156 = getelementptr inbounds i32* %in, i64 12
  %157 = load i32* %156
  %158 = add i32 %155, %157
  %159 = add i32 %158, 1804603682
  %160 = add i32 %116, %159
  %161 = shl i32 %160, 7
  %162 = lshr i32 %160, 25
  %163 = or i32 %161, %162
  %164 = add i32 %163, %152
  %165 = xor i32 %152, %140
  %166 = and i32 %164, %165
  %167 = xor i32 %140, %166
  %168 = getelementptr inbounds i32* %in, i64 13
  %169 = load i32* %168
  %170 = add i32 %167, %169
  %171 = add i32 %170, -40341101
  %172 = add i32 %128, %171
  %173 = shl i32 %172, 12
  %174 = lshr i32 %172, 20
  %175 = or i32 %173, %174
  %176 = add i32 %175, %164
  %177 = xor i32 %164, %152
  %178 = and i32 %176, %177
  %179 = xor i32 %152, %178
  %180 = getelementptr inbounds i32* %in, i64 14
  %181 = load i32* %180
  %182 = add i32 %179, %181
  %183 = add i32 %182, -1502002290
  %184 = add i32 %140, %183
  %185 = shl i32 %184, 17
  %186 = lshr i32 %184, 15
  %187 = or i32 %185, %186
  %188 = add i32 %187, %176
  %189 = xor i32 %176, %164
  %190 = and i32 %188, %189
  %191 = xor i32 %164, %190
  %192 = getelementptr inbounds i32* %in, i64 15
  %193 = load i32* %192
  %194 = add i32 %191, %193
  %195 = add i32 %194, 1236535329
  %196 = add i32 %152, %195
  %197 = shl i32 %196, 22
  %198 = lshr i32 %196, 10
  %199 = or i32 %197, %198
  %200 = add i32 %199, %188
  %201 = xor i32 %200, %188
  %202 = and i32 %176, %201
  %203 = xor i32 %188, %202
  %204 = getelementptr inbounds i32* %in, i64 1
  %205 = load i32* %204
  %206 = add i32 %203, %205
  %207 = add i32 %206, -165796510
  %208 = add i32 %164, %207
  %209 = shl i32 %208, 5
  %210 = lshr i32 %208, 27
  %211 = or i32 %209, %210
  %212 = add i32 %211, %200
  %213 = xor i32 %212, %200
  %214 = and i32 %188, %213
  %215 = xor i32 %200, %214
  %216 = getelementptr inbounds i32* %in, i64 6
  %217 = load i32* %216
  %218 = add i32 %215, %217
  %219 = add i32 %218, -1069501632
  %220 = add i32 %176, %219
  %221 = shl i32 %220, 9
  %222 = lshr i32 %220, 23
  %223 = or i32 %221, %222
  %224 = add i32 %223, %212
  %225 = xor i32 %224, %212
  %226 = and i32 %200, %225
  %227 = xor i32 %212, %226
  %228 = getelementptr inbounds i32* %in, i64 11
  %229 = load i32* %228
  %230 = add i32 %227, %229
  %231 = add i32 %230, 643717713
  %232 = add i32 %188, %231
  %233 = shl i32 %232, 14
  %234 = lshr i32 %232, 18
  %235 = or i32 %233, %234
  %236 = add i32 %235, %224
  %237 = xor i32 %236, %224
  %238 = and i32 %212, %237
  %239 = xor i32 %224, %238
  %240 = getelementptr inbounds i32* %in, i64 0
  %241 = load i32* %240
  %242 = add i32 %239, %241
  %243 = add i32 %242, -373897302
  %244 = add i32 %200, %243
  %245 = shl i32 %244, 20
  %246 = lshr i32 %244, 12
  %247 = or i32 %245, %246
  %248 = add i32 %247, %236
  %249 = xor i32 %248, %236
  %250 = and i32 %224, %249
  %251 = xor i32 %236, %250
  %252 = getelementptr inbounds i32* %in, i64 5
  %253 = load i32* %252
  %254 = add i32 %251, %253
  %255 = add i32 %254, -701558691
  %256 = add i32 %212, %255
  %257 = shl i32 %256, 5
  %258 = lshr i32 %256, 27
  %259 = or i32 %257, %258
  %260 = add i32 %259, %248
  %261 = xor i32 %260, %248
  %262 = and i32 %236, %261
  %263 = xor i32 %248, %262
  %264 = getelementptr inbounds i32* %in, i64 10
  %265 = load i32* %264
  %266 = add i32 %263, %265
  %267 = add i32 %266, 38016083
  %268 = add i32 %224, %267
  %269 = shl i32 %268, 9
  %270 = lshr i32 %268, 23
  %271 = or i32 %269, %270
  %272 = add i32 %271, %260
  %273 = xor i32 %272, %260
  %274 = and i32 %248, %273
  %275 = xor i32 %260, %274
  %276 = getelementptr inbounds i32* %in, i64 15
  %277 = load i32* %276
  %278 = add i32 %275, %277
  %279 = add i32 %278, -660478335
  %280 = add i32 %236, %279
  %281 = shl i32 %280, 14
  %282 = lshr i32 %280, 18
  %283 = or i32 %281, %282
  %284 = add i32 %283, %272
  %285 = xor i32 %284, %272
  %286 = and i32 %260, %285
  %287 = xor i32 %272, %286
  %288 = getelementptr inbounds i32* %in, i64 4
  %289 = load i32* %288
  %290 = add i32 %287, %289
  %291 = add i32 %290, -405537848
  %292 = add i32 %248, %291
  %293 = shl i32 %292, 20
  %294 = lshr i32 %292, 12
  %295 = or i32 %293, %294
  %296 = add i32 %295, %284
  %297 = xor i32 %296, %284
  %298 = and i32 %272, %297
  %299 = xor i32 %284, %298
  %300 = getelementptr inbounds i32* %in, i64 9
  %301 = load i32* %300
  %302 = add i32 %299, %301
  %303 = add i32 %302, 568446438
  %304 = add i32 %260, %303
  %305 = shl i32 %304, 5
  %306 = lshr i32 %304, 27
  %307 = or i32 %305, %306
  %308 = add i32 %307, %296
  %309 = xor i32 %308, %296
  %310 = and i32 %284, %309
  %311 = xor i32 %296, %310
  %312 = getelementptr inbounds i32* %in, i64 14
  %313 = load i32* %312
  %314 = add i32 %311, %313
  %315 = add i32 %314, -1019803690
  %316 = add i32 %272, %315
  %317 = shl i32 %316, 9
  %318 = lshr i32 %316, 23
  %319 = or i32 %317, %318
  %320 = add i32 %319, %308
  %321 = xor i32 %320, %308
  %322 = and i32 %296, %321
  %323 = xor i32 %308, %322
  %324 = getelementptr inbounds i32* %in, i64 3
  %325 = load i32* %324
  %326 = add i32 %323, %325
  %327 = add i32 %326, -187363961
  %328 = add i32 %284, %327
  %329 = shl i32 %328, 14
  %330 = lshr i32 %328, 18
  %331 = or i32 %329, %330
  %332 = add i32 %331, %320
  %333 = xor i32 %332, %320
  %334 = and i32 %308, %333
  %335 = xor i32 %320, %334
  %336 = getelementptr inbounds i32* %in, i64 8
  %337 = load i32* %336
  %338 = add i32 %335, %337
  %339 = add i32 %338, 1163531501
  %340 = add i32 %296, %339
  %341 = shl i32 %340, 20
  %342 = lshr i32 %340, 12
  %343 = or i32 %341, %342
  %344 = add i32 %343, %332
  %345 = xor i32 %344, %332
  %346 = and i32 %320, %345
  %347 = xor i32 %332, %346
  %348 = getelementptr inbounds i32* %in, i64 13
  %349 = load i32* %348
  %350 = add i32 %347, %349
  %351 = add i32 %350, -1444681467
  %352 = add i32 %308, %351
  %353 = shl i32 %352, 5
  %354 = lshr i32 %352, 27
  %355 = or i32 %353, %354
  %356 = add i32 %355, %344
  %357 = xor i32 %356, %344
  %358 = and i32 %332, %357
  %359 = xor i32 %344, %358
  %360 = getelementptr inbounds i32* %in, i64 2
  %361 = load i32* %360
  %362 = add i32 %359, %361
  %363 = add i32 %362, -51403784
  %364 = add i32 %320, %363
  %365 = shl i32 %364, 9
  %366 = lshr i32 %364, 23
  %367 = or i32 %365, %366
  %368 = add i32 %367, %356
  %369 = xor i32 %368, %356
  %370 = and i32 %344, %369
  %371 = xor i32 %356, %370
  %372 = getelementptr inbounds i32* %in, i64 7
  %373 = load i32* %372
  %374 = add i32 %371, %373
  %375 = add i32 %374, 1735328473
  %376 = add i32 %332, %375
  %377 = shl i32 %376, 14
  %378 = lshr i32 %376, 18
  %379 = or i32 %377, %378
  %380 = add i32 %379, %368
  %381 = xor i32 %380, %368
  %382 = and i32 %356, %381
  %383 = xor i32 %368, %382
  %384 = getelementptr inbounds i32* %in, i64 12
  %385 = load i32* %384
  %386 = add i32 %383, %385
  %387 = add i32 %386, -1926607734
  %388 = add i32 %344, %387
  %389 = shl i32 %388, 20
  %390 = lshr i32 %388, 12
  %391 = or i32 %389, %390
  %392 = add i32 %391, %380
  %393 = xor i32 %392, %380
  %394 = xor i32 %393, %368
  %395 = getelementptr inbounds i32* %in, i64 5
  %396 = load i32* %395
  %397 = add i32 %394, %396
  %398 = add i32 %397, -378558
  %399 = add i32 %356, %398
  %400 = shl i32 %399, 4
  %401 = lshr i32 %399, 28
  %402 = or i32 %400, %401
  %403 = add i32 %402, %392
  %404 = xor i32 %403, %392
  %405 = xor i32 %404, %380
  %406 = getelementptr inbounds i32* %in, i64 8
  %407 = load i32* %406
  %408 = add i32 %405, %407
  %409 = add i32 %408, -2022574463
  %410 = add i32 %368, %409
  %411 = shl i32 %410, 11
  %412 = lshr i32 %410, 21
  %413 = or i32 %411, %412
  %414 = add i32 %413, %403
  %415 = xor i32 %414, %403
  %416 = xor i32 %415, %392
  %417 = getelementptr inbounds i32* %in, i64 11
  %418 = load i32* %417
  %419 = add i32 %416, %418
  %420 = add i32 %419, 1839030562
  %421 = add i32 %380, %420
  %422 = shl i32 %421, 16
  %423 = lshr i32 %421, 16
  %424 = or i32 %422, %423
  %425 = add i32 %424, %414
  %426 = xor i32 %425, %414
  %427 = xor i32 %426, %403
  %428 = getelementptr inbounds i32* %in, i64 14
  %429 = load i32* %428
  %430 = add i32 %427, %429
  %431 = add i32 %430, -35309556
  %432 = add i32 %392, %431
  %433 = shl i32 %432, 23
  %434 = lshr i32 %432, 9
  %435 = or i32 %433, %434
  %436 = add i32 %435, %425
  %437 = xor i32 %436, %425
  %438 = xor i32 %437, %414
  %439 = getelementptr inbounds i32* %in, i64 1
  %440 = load i32* %439
  %441 = add i32 %438, %440
  %442 = add i32 %441, -1530992060
  %443 = add i32 %403, %442
  %444 = shl i32 %443, 4
  %445 = lshr i32 %443, 28
  %446 = or i32 %444, %445
  %447 = add i32 %446, %436
  %448 = xor i32 %447, %436
  %449 = xor i32 %448, %425
  %450 = getelementptr inbounds i32* %in, i64 4
  %451 = load i32* %450
  %452 = add i32 %449, %451
  %453 = add i32 %452, 1272893353
  %454 = add i32 %414, %453
  %455 = shl i32 %454, 11
  %456 = lshr i32 %454, 21
  %457 = or i32 %455, %456
  %458 = add i32 %457, %447
  %459 = xor i32 %458, %447
  %460 = xor i32 %459, %436
  %461 = getelementptr inbounds i32* %in, i64 7
  %462 = load i32* %461
  %463 = add i32 %460, %462
  %464 = add i32 %463, -155497632
  %465 = add i32 %425, %464
  %466 = shl i32 %465, 16
  %467 = lshr i32 %465, 16
  %468 = or i32 %466, %467
  %469 = add i32 %468, %458
  %470 = xor i32 %469, %458
  %471 = xor i32 %470, %447
  %472 = getelementptr inbounds i32* %in, i64 10
  %473 = load i32* %472
  %474 = add i32 %471, %473
  %475 = add i32 %474, -1094730640
  %476 = add i32 %436, %475
  %477 = shl i32 %476, 23
  %478 = lshr i32 %476, 9
  %479 = or i32 %477, %478
  %480 = add i32 %479, %469
  %481 = xor i32 %480, %469
  %482 = xor i32 %481, %458
  %483 = getelementptr inbounds i32* %in, i64 13
  %484 = load i32* %483
  %485 = add i32 %482, %484
  %486 = add i32 %485, 681279174
  %487 = add i32 %447, %486
  %488 = shl i32 %487, 4
  %489 = lshr i32 %487, 28
  %490 = or i32 %488, %489
  %491 = add i32 %490, %480
  %492 = xor i32 %491, %480
  %493 = xor i32 %492, %469
  %494 = getelementptr inbounds i32* %in, i64 0
  %495 = load i32* %494
  %496 = add i32 %493, %495
  %497 = add i32 %496, -358537222
  %498 = add i32 %458, %497
  %499 = shl i32 %498, 11
  %500 = lshr i32 %498, 21
  %501 = or i32 %499, %500
  %502 = add i32 %501, %491
  %503 = xor i32 %502, %491
  %504 = xor i32 %503, %480
  %505 = getelementptr inbounds i32* %in, i64 3
  %506 = load i32* %505
  %507 = add i32 %504, %506
  %508 = add i32 %507, -722521979
  %509 = add i32 %469, %508
  %510 = shl i32 %509, 16
  %511 = lshr i32 %509, 16
  %512 = or i32 %510, %511
  %513 = add i32 %512, %502
  %514 = xor i32 %513, %502
  %515 = xor i32 %514, %491
  %516 = getelementptr inbounds i32* %in, i64 6
  %517 = load i32* %516
  %518 = add i32 %515, %517
  %519 = add i32 %518, 76029189
  %520 = add i32 %480, %519
  %521 = shl i32 %520, 23
  %522 = lshr i32 %520, 9
  %523 = or i32 %521, %522
  %524 = add i32 %523, %513
  %525 = xor i32 %524, %513
  %526 = xor i32 %525, %502
  %527 = getelementptr inbounds i32* %in, i64 9
  %528 = load i32* %527
  %529 = add i32 %526, %528
  %530 = add i32 %529, -640364487
  %531 = add i32 %491, %530
  %532 = shl i32 %531, 4
  %533 = lshr i32 %531, 28
  %534 = or i32 %532, %533
  %535 = add i32 %534, %524
  %536 = xor i32 %535, %524
  %537 = xor i32 %536, %513
  %538 = getelementptr inbounds i32* %in, i64 12
  %539 = load i32* %538
  %540 = add i32 %537, %539
  %541 = add i32 %540, -421815835
  %542 = add i32 %502, %541
  %543 = shl i32 %542, 11
  %544 = lshr i32 %542, 21
  %545 = or i32 %543, %544
  %546 = add i32 %545, %535
  %547 = xor i32 %546, %535
  %548 = xor i32 %547, %524
  %549 = getelementptr inbounds i32* %in, i64 15
  %550 = load i32* %549
  %551 = add i32 %548, %550
  %552 = add i32 %551, 530742520
  %553 = add i32 %513, %552
  %554 = shl i32 %553, 16
  %555 = lshr i32 %553, 16
  %556 = or i32 %554, %555
  %557 = add i32 %556, %546
  %558 = xor i32 %557, %546
  %559 = xor i32 %558, %535
  %560 = getelementptr inbounds i32* %in, i64 2
  %561 = load i32* %560
  %562 = add i32 %559, %561
  %563 = add i32 %562, -995338651
  %564 = add i32 %524, %563
  %565 = shl i32 %564, 23
  %566 = lshr i32 %564, 9
  %567 = or i32 %565, %566
  %568 = add i32 %567, %557
  %569 = xor i32 %546, -1
  %570 = or i32 %568, %569
  %571 = xor i32 %557, %570
  %572 = getelementptr inbounds i32* %in, i64 0
  %573 = load i32* %572
  %574 = add i32 %571, %573
  %575 = add i32 %574, -198630844
  %576 = add i32 %535, %575
  %577 = shl i32 %576, 6
  %578 = lshr i32 %576, 26
  %579 = or i32 %577, %578
  %580 = add i32 %579, %568
  %581 = xor i32 %557, -1
  %582 = or i32 %580, %581
  %583 = xor i32 %568, %582
  %584 = getelementptr inbounds i32* %in, i64 7
  %585 = load i32* %584
  %586 = add i32 %583, %585
  %587 = add i32 %586, 1126891415
  %588 = add i32 %546, %587
  %589 = shl i32 %588, 10
  %590 = lshr i32 %588, 22
  %591 = or i32 %589, %590
  %592 = add i32 %591, %580
  %593 = xor i32 %568, -1
  %594 = or i32 %592, %593
  %595 = xor i32 %580, %594
  %596 = getelementptr inbounds i32* %in, i64 14
  %597 = load i32* %596
  %598 = add i32 %595, %597
  %599 = add i32 %598, -1416354905
  %600 = add i32 %557, %599
  %601 = shl i32 %600, 15
  %602 = lshr i32 %600, 17
  %603 = or i32 %601, %602
  %604 = add i32 %603, %592
  %605 = xor i32 %580, -1
  %606 = or i32 %604, %605
  %607 = xor i32 %592, %606
  %608 = getelementptr inbounds i32* %in, i64 5
  %609 = load i32* %608
  %610 = add i32 %607, %609
  %611 = add i32 %610, -57434055
  %612 = add i32 %568, %611
  %613 = shl i32 %612, 21
  %614 = lshr i32 %612, 11
  %615 = or i32 %613, %614
  %616 = add i32 %615, %604
  %617 = xor i32 %592, -1
  %618 = or i32 %616, %617
  %619 = xor i32 %604, %618
  %620 = getelementptr inbounds i32* %in, i64 12
  %621 = load i32* %620
  %622 = add i32 %619, %621
  %623 = add i32 %622, 1700485571
  %624 = add i32 %580, %623
  %625 = shl i32 %624, 6
  %626 = lshr i32 %624, 26
  %627 = or i32 %625, %626
  %628 = add i32 %627, %616
  %629 = xor i32 %604, -1
  %630 = or i32 %628, %629
  %631 = xor i32 %616, %630
  %632 = getelementptr inbounds i32* %in, i64 3
  %633 = load i32* %632
  %634 = add i32 %631, %633
  %635 = add i32 %634, -1894986606
  %636 = add i32 %592, %635
  %637 = shl i32 %636, 10
  %638 = lshr i32 %636, 22
  %639 = or i32 %637, %638
  %640 = add i32 %639, %628
  %641 = xor i32 %616, -1
  %642 = or i32 %640, %641
  %643 = xor i32 %628, %642
  %644 = getelementptr inbounds i32* %in, i64 10
  %645 = load i32* %644
  %646 = add i32 %643, %645
  %647 = add i32 %646, -1051523
  %648 = add i32 %604, %647
  %649 = shl i32 %648, 15
  %650 = lshr i32 %648, 17
  %651 = or i32 %649, %650
  %652 = add i32 %651, %640
  %653 = xor i32 %628, -1
  %654 = or i32 %652, %653
  %655 = xor i32 %640, %654
  %656 = getelementptr inbounds i32* %in, i64 1
  %657 = load i32* %656
  %658 = add i32 %655, %657
  %659 = add i32 %658, -2054922799
  %660 = add i32 %616, %659
  %661 = shl i32 %660, 21
  %662 = lshr i32 %660, 11
  %663 = or i32 %661, %662
  %664 = add i32 %663, %652
  %665 = xor i32 %640, -1
  %666 = or i32 %664, %665
  %667 = xor i32 %652, %666
  %668 = getelementptr inbounds i32* %in, i64 8
  %669 = load i32* %668
  %670 = add i32 %667, %669
  %671 = add i32 %670, 1873313359
  %672 = add i32 %628, %671
  %673 = shl i32 %672, 6
  %674 = lshr i32 %672, 26
  %675 = or i32 %673, %674
  %676 = add i32 %675, %664
  %677 = xor i32 %652, -1
  %678 = or i32 %676, %677
  %679 = xor i32 %664, %678
  %680 = getelementptr inbounds i32* %in, i64 15
  %681 = load i32* %680
  %682 = add i32 %679, %681
  %683 = add i32 %682, -30611744
  %684 = add i32 %640, %683
  %685 = shl i32 %684, 10
  %686 = lshr i32 %684, 22
  %687 = or i32 %685, %686
  %688 = add i32 %687, %676
  %689 = xor i32 %664, -1
  %690 = or i32 %688, %689
  %691 = xor i32 %676, %690
  %692 = getelementptr inbounds i32* %in, i64 6
  %693 = load i32* %692
  %694 = add i32 %691, %693
  %695 = add i32 %694, -1560198380
  %696 = add i32 %652, %695
  %697 = shl i32 %696, 15
  %698 = lshr i32 %696, 17
  %699 = or i32 %697, %698
  %700 = add i32 %699, %688
  %701 = xor i32 %676, -1
  %702 = or i32 %700, %701
  %703 = xor i32 %688, %702
  %704 = getelementptr inbounds i32* %in, i64 13
  %705 = load i32* %704
  %706 = add i32 %703, %705
  %707 = add i32 %706, 1309151649
  %708 = add i32 %664, %707
  %709 = shl i32 %708, 21
  %710 = lshr i32 %708, 11
  %711 = or i32 %709, %710
  %712 = add i32 %711, %700
  %713 = xor i32 %688, -1
  %714 = or i32 %712, %713
  %715 = xor i32 %700, %714
  %716 = getelementptr inbounds i32* %in, i64 4
  %717 = load i32* %716
  %718 = add i32 %715, %717
  %719 = add i32 %718, -145523070
  %720 = add i32 %676, %719
  %721 = shl i32 %720, 6
  %722 = lshr i32 %720, 26
  %723 = or i32 %721, %722
  %724 = add i32 %723, %712
  %725 = xor i32 %700, -1
  %726 = or i32 %724, %725
  %727 = xor i32 %712, %726
  %728 = getelementptr inbounds i32* %in, i64 11
  %729 = load i32* %728
  %730 = add i32 %727, %729
  %731 = add i32 %730, -1120210379
  %732 = add i32 %688, %731
  %733 = shl i32 %732, 10
  %734 = lshr i32 %732, 22
  %735 = or i32 %733, %734
  %736 = add i32 %735, %724
  %737 = xor i32 %712, -1
  %738 = or i32 %736, %737
  %739 = xor i32 %724, %738
  %740 = getelementptr inbounds i32* %in, i64 2
  %741 = load i32* %740
  %742 = add i32 %739, %741
  %743 = add i32 %742, 718787259
  %744 = add i32 %700, %743
  %745 = shl i32 %744, 15
  %746 = lshr i32 %744, 17
  %747 = or i32 %745, %746
  %748 = add i32 %747, %736
  %749 = xor i32 %724, -1
  %750 = or i32 %748, %749
  %751 = xor i32 %736, %750
  %752 = getelementptr inbounds i32* %in, i64 9
  %753 = load i32* %752
  %754 = add i32 %751, %753
  %755 = add i32 %754, -343485551
  %756 = add i32 %712, %755
  %757 = shl i32 %756, 21
  %758 = lshr i32 %756, 11
  %759 = or i32 %757, %758
  %760 = add i32 %759, %748
  %761 = getelementptr inbounds i32* %buf, i64 0
  %762 = load i32* %761
  %763 = add i32 %762, %724
  store i32 %763, i32* %761
  %764 = getelementptr inbounds i32* %buf, i64 1
  %765 = load i32* %764
  %766 = add i32 %765, %760
  store i32 %766, i32* %764
  %767 = getelementptr inbounds i32* %buf, i64 2
  %768 = load i32* %767
  %769 = add i32 %768, %748
  store i32 %769, i32* %767
  %770 = getelementptr inbounds i32* %buf, i64 3
  %771 = load i32* %770
  %772 = add i32 %771, %736
  store i32 %772, i32* %770
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @is_big_endian() #0 {
  %1 = load i8* bitcast (i32* @is_big_endian.n to i8*)
  %2 = sext i8 %1 to i32
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #1

declare i64 @send(i32, i8*, i64, i32)

attributes #0 = { nounwind uwtable }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly }
attributes #4 = { noreturn nounwind }
