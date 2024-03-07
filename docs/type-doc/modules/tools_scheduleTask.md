[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/scheduleTask

# Module: tools/scheduleTask

## Table of contents

### Functions

- [scheduleTask](tools_scheduleTask.md#scheduletask)

## Functions

### scheduleTask

▸ **scheduleTask**(`taskArr`, `onEnd?`, `needStop?`): `void`

类似`React`调度器，在浏览器空闲时，用`MessageChannel`调度任务。在任务很多时，可以避免卡顿

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `taskArr` | `Function`[] | 任务数组 |
| `onEnd?` | `Function` | 任务完成的回调 |
| `needStop?` | () => `boolean` | 是否停止任务 |

#### Returns

`void`

#### Defined in

tools/scheduleTask.ts:10
