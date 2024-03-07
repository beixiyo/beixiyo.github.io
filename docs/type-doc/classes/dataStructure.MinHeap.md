[@jl-org/tool](../README.md) / [Modules](../modules.md) / [dataStructure](../modules/dataStructure.md) / MinHeap

# Class: MinHeap\<T\>

[dataStructure](../modules/dataStructure.md).MinHeap

最小堆算法

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `HeapItem` |

## Table of contents

### Constructors

- [constructor](dataStructure.MinHeap.md#constructor)

### Properties

- [data](dataStructure.MinHeap.md#data)

### Accessors

- [size](dataStructure.MinHeap.md#size)

### Methods

- [isEmpty](dataStructure.MinHeap.md#isempty)
- [peek](dataStructure.MinHeap.md#peek)
- [pop](dataStructure.MinHeap.md#pop)
- [push](dataStructure.MinHeap.md#push)

## Constructors

### constructor

• **new MinHeap**\<`T`\>(): [`MinHeap`](dataStructure.MinHeap.md)\<`T`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `HeapItem` |

#### Returns

[`MinHeap`](dataStructure.MinHeap.md)\<`T`\>

#### Defined in

dataStructure/Heap.ts:5

## Properties

### data

• `Readonly` **data**: `T`[]

#### Defined in

dataStructure/Heap.ts:3

## Accessors

### size

• `get` **size**(): `number`

#### Returns

`number`

#### Defined in

dataStructure/Heap.ts:9

## Methods

### isEmpty

▸ **isEmpty**(): `boolean`

#### Returns

`boolean`

#### Defined in

dataStructure/Heap.ts:13

___

### peek

▸ **peek**(): `T`

返回堆顶的值

#### Returns

`T`

#### Defined in

dataStructure/Heap.ts:18

___

### pop

▸ **pop**(): `T`

删除并返回堆顶的值

#### Returns

`T`

#### Defined in

dataStructure/Heap.ts:27

___

### push

▸ **push**(`...items`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `...items` | `T`[] |

#### Returns

`void`

#### Defined in

dataStructure/Heap.ts:22
