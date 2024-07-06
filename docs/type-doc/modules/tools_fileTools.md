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

tools/fileTools.ts:56

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

tools/fileTools.ts:40

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

tools/fileTools.ts:76

___

### dataToStr

▸ **dataToStr**(`data`, `encode?`): `Promise`\<`string`\>

二进制转字符串

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `data` | `ArrayBuffer` \| `Blob` | `undefined` | 数据 |
| `encode` | `string` | `'utf-8'` | 编码格式，默认 utf-8 |

#### Returns

`Promise`\<`string`\>

#### Defined in

tools/fileTools.ts:100

___

### downloadByData

▸ **downloadByData**(`data`, `filename`): `void`

用 `Blob` 下载

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `data` | `Blob` | 数据 |
| `filename` | `string` | 文件名 |

#### Returns

`void`

#### Defined in

tools/fileTools.ts:8

___

### downloadByUrl

▸ **downloadByUrl**(`url`, `fileName`, `matchProto?`): `Promise`\<`void`\>

用 url 下载

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `url` | `string` | `undefined` | 链接 |
| `fileName` | `string` | `undefined` | 文件名 |
| `matchProto` | `boolean` | `false` | 是否匹配协议，比如把 http 匹配为当前站的协议。默认 false |

#### Returns

`Promise`\<`void`\>

#### Defined in

tools/fileTools.ts:23
