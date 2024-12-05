[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/fileTools

# Module: tools/fileTools

## Table of contents

### Functions

- [base64ToBlob](tools_fileTools.md#base64toblob)
- [blobToBase64](tools_fileTools.md#blobtobase64)
- [blobToStream](tools_fileTools.md#blobtostream)
- [dataToStr](tools_fileTools.md#datatostr)
- [downloadByData](tools_fileTools.md#downloadbydata)
- [downloadByUrl](tools_fileTools.md#downloadbyurl)
- [urlToBlob](tools_fileTools.md#urltoblob)

## Functions

### base64ToBlob

▸ **base64ToBlob**(`base64Str`, `mimeType?`): `Blob`

Base64 转 Blob

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `base64Str` | `string` | `undefined` | base64 |
| `mimeType` | `string` | `'application/octet-stream'` | 文件类型，默认 application/octet-stream |

#### Returns

`Blob`

#### Defined in

[src/tools/fileTools.ts:54](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/fileTools.ts#L54)

___

### blobToBase64

▸ **blobToBase64**(`blob`): `Promise`\<`string`\>

Blob 转 Base64

#### Parameters

| Name | Type |
| :------ | :------ |
| `blob` | `Blob` |

#### Returns

`Promise`\<`string`\>

#### Defined in

[src/tools/fileTools.ts:38](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/fileTools.ts#L38)

___

### blobToStream

▸ **blobToStream**(`blob`): `Promise`\<`ReadableStream`\>

blob 转成 Stream，方便浏览器和 Node 互操作

#### Parameters

| Name | Type |
| :------ | :------ |
| `blob` | `Blob` |

#### Returns

`Promise`\<`ReadableStream`\>

#### Defined in

[src/tools/fileTools.ts:81](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/fileTools.ts#L81)

___

### dataToStr

▸ **dataToStr**(`data`, `encode?`): `Promise`\<`string`\>

二进制转字符串

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `data` | `Blob` \| `ArrayBuffer` | `undefined` | 数据 |
| `encode` | `string` | `'utf-8'` | 编码格式，默认 utf-8 |

#### Returns

`Promise`\<`string`\>

#### Defined in

[src/tools/fileTools.ts:105](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/fileTools.ts#L105)

___

### downloadByData

▸ **downloadByData**(`data`, `fileName?`): `void`

用 `Blob` 下载

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `data` | `Blob` | `undefined` | 数据 |
| `fileName` | `string` | `''` | 文件名 |

#### Returns

`void`

#### Defined in

[src/tools/fileTools.ts:8](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/fileTools.ts#L8)

___

### downloadByUrl

▸ **downloadByUrl**(`url`, `fileName?`, `matchProto?`): `Promise`\<`void`\>

用 url 下载

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `url` | `string` | `undefined` | 链接 |
| `fileName` | `string` | `''` | 文件名 |
| `matchProto` | `boolean` | `false` | 是否匹配协议，比如把 http 匹配为当前站的协议。默认 false |

#### Returns

`Promise`\<`void`\>

#### Defined in

[src/tools/fileTools.ts:23](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/fileTools.ts#L23)

___

### urlToBlob

▸ **urlToBlob**(`url`): `Promise`\<`Blob`\>

把 http url 转 blob

#### Parameters

| Name | Type |
| :------ | :------ |
| `url` | `string` |

#### Returns

`Promise`\<`Blob`\>

#### Defined in

[src/tools/fileTools.ts:74](https://github.com/beixiyo/jl-tool/blob/45e2229/src/tools/fileTools.ts#L74)
