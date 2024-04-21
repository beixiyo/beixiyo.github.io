[@jl-org/tool](../README.md) / [Modules](../modules.md) / http

# Module: http

## Table of contents

### Functions

- [concurrentTask](http.md#concurrenttask)
- [retryReq](http.md#retryreq)

## Functions

### concurrentTask

▸ **concurrentTask**\<`T`\>(`tasks`, `maxCount?`): `Promise`\<`T`[]\>

并发任务数组 完成最大并发数后才会继续

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `tasks` | () => `Promise`\<`T`\>[] | `undefined` | 任务数组 |
| `maxCount` | `number` | `4` | 最大并发数，默认 4 |

#### Returns

`Promise`\<`T`[]\>

#### Defined in

http/tool.ts:25

___

### retryReq

▸ **retryReq**\<`T`\>(`task`, `maxCount?`): `Promise`\<`T`\>

失败后自动重试请求

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `task` | () => `Promise`\<`T`\> | `undefined` | 任务数组 |
| `maxCount` | `number` | `3` | 重试次数，默认 3 |

#### Returns

`Promise`\<`T`\>

#### Defined in

http/tool.ts:7
